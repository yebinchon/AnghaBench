
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct alx_hw {int dummy; } ;


 int alx_write_phy_core (struct alx_hw*,int,int ,int ,int ) ;

__attribute__((used)) static int __alx_write_phy_reg(struct alx_hw *hw, u16 reg, u16 phy_data)
{
 return alx_write_phy_core(hw, 0, 0, reg, phy_data);
}
