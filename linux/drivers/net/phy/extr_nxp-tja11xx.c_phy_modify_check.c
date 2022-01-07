
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct phy_device {int dummy; } ;


 int phy_modify (struct phy_device*,int ,int ,int ) ;
 int tja11xx_check (struct phy_device*,int ,int ,int ) ;

__attribute__((used)) static int phy_modify_check(struct phy_device *phydev, u8 reg,
       u16 mask, u16 set)
{
 int ret;

 ret = phy_modify(phydev, reg, mask, set);
 if (ret)
  return ret;

 return tja11xx_check(phydev, reg, mask, set);
}
