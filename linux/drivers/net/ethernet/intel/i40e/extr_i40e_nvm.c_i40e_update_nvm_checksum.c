
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i40e_hw {int dummy; } ;
typedef scalar_t__ i40e_status ;
typedef int __le16 ;


 int I40E_SR_SW_CHECKSUM_WORD ;
 int cpu_to_le16 (int ) ;
 scalar_t__ i40e_calc_nvm_checksum (struct i40e_hw*,int *) ;
 scalar_t__ i40e_write_nvm_aq (struct i40e_hw*,int,int ,int,int *,int) ;

i40e_status i40e_update_nvm_checksum(struct i40e_hw *hw)
{
 i40e_status ret_code;
 u16 checksum;
 __le16 le_sum;

 ret_code = i40e_calc_nvm_checksum(hw, &checksum);
 le_sum = cpu_to_le16(checksum);
 if (!ret_code)
  ret_code = i40e_write_nvm_aq(hw, 0x00, I40E_SR_SW_CHECKSUM_WORD,
          1, &le_sum, 1);

 return ret_code;
}
