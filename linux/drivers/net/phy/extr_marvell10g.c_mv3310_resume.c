
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MDIO_MMD_VEND2 ;
 int MV_V2_PORT_CTRL ;
 int MV_V2_PORT_CTRL_PWRDOWN ;
 int mv3310_hwmon_config (struct phy_device*,int) ;
 int phy_clear_bits_mmd (struct phy_device*,int ,int ,int ) ;

__attribute__((used)) static int mv3310_resume(struct phy_device *phydev)
{
 int ret;

 ret = phy_clear_bits_mmd(phydev, MDIO_MMD_VEND2, MV_V2_PORT_CTRL,
     MV_V2_PORT_CTRL_PWRDOWN);
 if (ret)
  return ret;

 return mv3310_hwmon_config(phydev, 1);
}
