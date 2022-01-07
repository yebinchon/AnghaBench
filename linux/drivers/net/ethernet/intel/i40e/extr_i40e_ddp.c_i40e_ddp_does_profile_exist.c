
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i40e_profile_info {int dummy; } ;
struct i40e_hw {int dummy; } ;
struct i40e_ddp_profile_list {int p_count; int * p_info; } ;
typedef scalar_t__ i40e_status ;


 int I40E_PROFILE_LIST_SIZE ;
 scalar_t__ i40e_aq_get_ddp_list (struct i40e_hw*,int *,int,int ,int *) ;
 scalar_t__ i40e_ddp_profiles_eq (struct i40e_profile_info*,int *) ;

__attribute__((used)) static int i40e_ddp_does_profile_exist(struct i40e_hw *hw,
           struct i40e_profile_info *pinfo)
{
 struct i40e_ddp_profile_list *profile_list;
 u8 buff[I40E_PROFILE_LIST_SIZE];
 i40e_status status;
 int i;

 status = i40e_aq_get_ddp_list(hw, buff, I40E_PROFILE_LIST_SIZE, 0,
          ((void*)0));
 if (status)
  return -1;

 profile_list = (struct i40e_ddp_profile_list *)buff;
 for (i = 0; i < profile_list->p_count; i++) {
  if (i40e_ddp_profiles_eq(pinfo, &profile_list->p_info[i]))
   return 1;
 }
 return 0;
}
