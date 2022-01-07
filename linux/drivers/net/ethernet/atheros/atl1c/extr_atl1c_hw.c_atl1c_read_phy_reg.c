
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct atl1c_hw {int dummy; } ;


 int atl1c_read_phy_core (struct atl1c_hw*,int,int ,int ,int *) ;

int atl1c_read_phy_reg(struct atl1c_hw *hw, u16 reg_addr, u16 *phy_data)
{
 return atl1c_read_phy_core(hw, 0, 0, reg_addr, phy_data);
}
