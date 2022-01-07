
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_AUTO_MDIX_EN ;
 int MII_INTERNAL_CTRL_STATUS ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;
 int rockchip_integrated_phy_analog_init (struct phy_device*) ;

__attribute__((used)) static int rockchip_integrated_phy_config_init(struct phy_device *phydev)
{
 int val, ret;





 val = phy_read(phydev, MII_INTERNAL_CTRL_STATUS);
 if (val < 0)
  return val;
 val &= ~MII_AUTO_MDIX_EN;
 ret = phy_write(phydev, MII_INTERNAL_CTRL_STATUS, val);
 if (ret)
  return ret;

 return rockchip_integrated_phy_analog_init(phydev);
}
