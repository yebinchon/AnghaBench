
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int drv; } ;


 int EIO ;
 int MDIO_MMD_PCS ;
 int MDIO_PCS_EEE_WK_ERR ;
 int phy_read_mmd (struct phy_device*,int ,int ) ;

int phy_get_eee_err(struct phy_device *phydev)
{
 if (!phydev->drv)
  return -EIO;

 return phy_read_mmd(phydev, MDIO_MMD_PCS, MDIO_PCS_EEE_WK_ERR);
}
