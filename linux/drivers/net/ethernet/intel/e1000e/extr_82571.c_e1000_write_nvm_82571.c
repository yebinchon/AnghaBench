
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int E1000_ERR_NVM ;





 int e1000_write_nvm_eewr_82571 (struct e1000_hw*,int ,int ,int *) ;
 int e1000e_write_nvm_spi (struct e1000_hw*,int ,int ,int *) ;

__attribute__((used)) static s32 e1000_write_nvm_82571(struct e1000_hw *hw, u16 offset, u16 words,
     u16 *data)
{
 s32 ret_val;

 switch (hw->mac.type) {
 case 130:
 case 129:
 case 128:
  ret_val = e1000_write_nvm_eewr_82571(hw, offset, words, data);
  break;
 case 132:
 case 131:
  ret_val = e1000e_write_nvm_spi(hw, offset, words, data);
  break;
 default:
  ret_val = -E1000_ERR_NVM;
  break;
 }

 return ret_val;
}
