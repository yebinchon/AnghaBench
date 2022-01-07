
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interrupts; } ;


 int LAN87XX_INTERRUPT_MASK ;
 int LAN87XX_INTERRUPT_SOURCE ;
 int LAN87XX_MASK_LINK_DOWN ;
 int LAN87XX_MASK_LINK_UP ;
 scalar_t__ PHY_INTERRUPT_ENABLED ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int lan87xx_phy_config_intr(struct phy_device *phydev)
{
 int rc, val = 0;

 if (phydev->interrupts == PHY_INTERRUPT_ENABLED) {

  rc = phy_write(phydev, LAN87XX_INTERRUPT_MASK, 0x7FFF);
  rc = phy_read(phydev, LAN87XX_INTERRUPT_SOURCE);
  val = LAN87XX_MASK_LINK_UP | LAN87XX_MASK_LINK_DOWN;
 }

 rc = phy_write(phydev, LAN87XX_INTERRUPT_MASK, val);

 return rc < 0 ? rc : 0;
}
