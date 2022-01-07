
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int genphy_soft_reset (struct phy_device*) ;
 int tja11xx_enable_reg_write (struct phy_device*) ;

__attribute__((used)) static int tja11xx_soft_reset(struct phy_device *phydev)
{
 int ret;

 ret = tja11xx_enable_reg_write(phydev);
 if (ret)
  return ret;

 return genphy_soft_reset(phydev);
}
