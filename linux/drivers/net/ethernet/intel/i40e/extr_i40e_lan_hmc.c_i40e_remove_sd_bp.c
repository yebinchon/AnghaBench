
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40e_hw {int dummy; } ;
struct i40e_hmc_info {int dummy; } ;
typedef int i40e_status ;


 int i40e_prep_remove_sd_bp (struct i40e_hmc_info*,int ) ;
 int i40e_remove_sd_bp_new (struct i40e_hw*,struct i40e_hmc_info*,int ,int) ;

__attribute__((used)) static i40e_status i40e_remove_sd_bp(struct i40e_hw *hw,
            struct i40e_hmc_info *hmc_info,
            u32 idx)
{
 i40e_status ret_code = 0;

 if (!i40e_prep_remove_sd_bp(hmc_info, idx))
  ret_code = i40e_remove_sd_bp_new(hw, hmc_info, idx, 1);

 return ret_code;
}
