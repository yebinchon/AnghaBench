
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int __e1000_read_phy_reg_hv (struct e1000_hw*,int ,int *,int,int) ;

s32 e1000_read_phy_reg_page_hv(struct e1000_hw *hw, u32 offset, u16 *data)
{
 return __e1000_read_phy_reg_hv(hw, offset, data, 1, 1);
}
