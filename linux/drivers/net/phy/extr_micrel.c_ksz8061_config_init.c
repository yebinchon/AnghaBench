
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MDIO_DEVID1 ;
 int MDIO_MMD_PMAPMD ;
 int kszphy_config_init (struct phy_device*) ;
 int phy_write_mmd (struct phy_device*,int ,int ,int) ;

__attribute__((used)) static int ksz8061_config_init(struct phy_device *phydev)
{
 int ret;

 ret = phy_write_mmd(phydev, MDIO_MMD_PMAPMD, MDIO_DEVID1, 0xB61A);
 if (ret)
  return ret;

 return kszphy_config_init(phydev);
}
