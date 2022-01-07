
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int __igb_access_emi_reg (struct e1000_hw*,int ,int *,int) ;

s32 igb_read_emi_reg(struct e1000_hw *hw, u16 addr, u16 *data)
{
 return __igb_access_emi_reg(hw, addr, data, 1);
}
