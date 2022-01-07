
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int XWAY_MDIO_INIT_MASK ;
 int XWAY_MDIO_ISTAT ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int xway_gphy_did_interrupt(struct phy_device *phydev)
{
 int reg;

 reg = phy_read(phydev, XWAY_MDIO_ISTAT);
 return reg & XWAY_MDIO_INIT_MASK;
}
