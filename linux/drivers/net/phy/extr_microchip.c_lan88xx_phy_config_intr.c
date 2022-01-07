
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interrupts; } ;


 int LAN88XX_INT_MASK ;
 int LAN88XX_INT_MASK_LINK_CHANGE_ ;
 int LAN88XX_INT_MASK_MDINTPIN_EN_ ;
 int LAN88XX_INT_STS ;
 scalar_t__ PHY_INTERRUPT_ENABLED ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int lan88xx_phy_config_intr(struct phy_device *phydev)
{
 int rc;

 if (phydev->interrupts == PHY_INTERRUPT_ENABLED) {

  rc = phy_write(phydev, LAN88XX_INT_MASK, 0x7FFF);
  rc = phy_read(phydev, LAN88XX_INT_STS);
  rc = phy_write(phydev, LAN88XX_INT_MASK,
          LAN88XX_INT_MASK_MDINTPIN_EN_ |
          LAN88XX_INT_MASK_LINK_CHANGE_);
 } else {
  rc = phy_write(phydev, LAN88XX_INT_MASK, 0);
 }

 return rc < 0 ? rc : 0;
}
