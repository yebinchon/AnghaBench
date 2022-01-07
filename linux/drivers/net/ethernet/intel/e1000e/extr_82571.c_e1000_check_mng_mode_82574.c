
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct e1000_hw {int dummy; } ;


 int E1000_NVM_INIT_CTRL2_MNGM ;
 int NVM_INIT_CONTROL2_REG ;
 int e1000_read_nvm (struct e1000_hw*,int ,int,int*) ;

__attribute__((used)) static bool e1000_check_mng_mode_82574(struct e1000_hw *hw)
{
 u16 data;

 e1000_read_nvm(hw, NVM_INIT_CONTROL2_REG, 1, &data);
 return (data & E1000_NVM_INIT_CTRL2_MNGM) != 0;
}
