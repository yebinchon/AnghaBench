
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i40e_hw {int dummy; } ;
typedef int i40e_status ;
typedef int __le16 ;


 int I40E_ERR_TIMEOUT ;
 int i40e_read_nvm_aq (struct i40e_hw*,int,int ,int,int *,int) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static i40e_status i40e_read_nvm_word_aq(struct i40e_hw *hw, u16 offset,
      u16 *data)
{
 i40e_status ret_code = I40E_ERR_TIMEOUT;

 ret_code = i40e_read_nvm_aq(hw, 0x0, offset, 1, data, 1);
 *data = le16_to_cpu(*(__le16 *)data);

 return ret_code;
}
