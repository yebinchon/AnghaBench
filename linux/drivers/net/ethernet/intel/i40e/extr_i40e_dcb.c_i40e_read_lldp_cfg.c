
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40e_lldp_variables {int dummy; } ;
struct i40e_hw {int dummy; } ;
typedef int mem ;
typedef scalar_t__ i40e_status ;


 int I40E_EMP_MODULE_PTR ;
 scalar_t__ I40E_ERR_PARAM ;
 int I40E_NVM_LLDP_CFG_PTR ;
 int I40E_RESOURCE_READ ;
 int I40E_SR_EMP_MODULE_PTR ;
 int I40E_SR_LLDP_CFG_PTR ;
 int I40E_SR_NVM_CONTROL_WORD ;
 int I40E_SR_NVM_MAP_STRUCTURE_TYPE ;
 scalar_t__ _i40e_read_lldp_cfg (struct i40e_hw*,struct i40e_lldp_variables*,int ,int ) ;
 scalar_t__ i40e_acquire_nvm (struct i40e_hw*,int ) ;
 scalar_t__ i40e_aq_read_nvm (struct i40e_hw*,int ,int ,int,int*,int,int *) ;
 int i40e_release_nvm (struct i40e_hw*) ;

i40e_status i40e_read_lldp_cfg(struct i40e_hw *hw,
          struct i40e_lldp_variables *lldp_cfg)
{
 i40e_status ret = 0;
 u32 mem;

 if (!lldp_cfg)
  return I40E_ERR_PARAM;

 ret = i40e_acquire_nvm(hw, I40E_RESOURCE_READ);
 if (ret)
  return ret;

 ret = i40e_aq_read_nvm(hw, I40E_SR_NVM_CONTROL_WORD, 0, sizeof(mem),
          &mem, 1, ((void*)0));
 i40e_release_nvm(hw);
 if (ret)
  return ret;





 if (mem & I40E_SR_NVM_MAP_STRUCTURE_TYPE) {

  ret = _i40e_read_lldp_cfg(hw, lldp_cfg, I40E_SR_EMP_MODULE_PTR,
       I40E_SR_LLDP_CFG_PTR);
 } else {

  ret = _i40e_read_lldp_cfg(hw, lldp_cfg, I40E_EMP_MODULE_PTR,
       I40E_NVM_LLDP_CFG_PTR);
 }

 return ret;
}
