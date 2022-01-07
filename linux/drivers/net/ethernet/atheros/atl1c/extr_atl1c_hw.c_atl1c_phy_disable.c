
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atl1c_hw {int dummy; } ;


 int atl1c_power_saving (struct atl1c_hw*,int ) ;

void atl1c_phy_disable(struct atl1c_hw *hw)
{
 atl1c_power_saving(hw, 0);
}
