
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phy_device {scalar_t__ interrupts; } ;


 scalar_t__ PHY_INTERRUPT_ENABLED ;
 int XWAY_MDIO_IMASK ;
 int XWAY_MDIO_INIT_MASK ;
 int phy_write (struct phy_device*,int ,int ) ;

__attribute__((used)) static int xway_gphy_config_intr(struct phy_device *phydev)
{
 u16 mask = 0;

 if (phydev->interrupts == PHY_INTERRUPT_ENABLED)
  mask = XWAY_MDIO_INIT_MASK;

 return phy_write(phydev, XWAY_MDIO_IMASK, mask);
}
