class Solution {
    int c=0;
  int findTargetSumWays(List<int> nums, int target) {
      dfs(nums,target,0);

      return c;
  }
  dfs(List<int> nums,int target,int sum){
      if(nums.length==1){
          if(sum+nums[0]==target){
              c++;
          }
           if(sum-nums[0]==target){
              c++;
          }
          return ;
      }
        int cur=nums[0];
        dfs(nums.sublist(1),target,sum+cur);
        dfs(nums.sublist(1),target,sum-cur);
  }
}