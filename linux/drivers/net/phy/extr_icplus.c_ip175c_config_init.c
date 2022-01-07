
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; int bus; } ;
struct phy_device {int link; int attached_dev; int duplex; int speed; int state; TYPE_1__ mdio; } ;


 int BMCR_RESET ;
 int DUPLEX_FULL ;
 int MII_BMCR ;
 int PHY_RUNNING ;
 int SPEED_100 ;
 int mdelay (int) ;
 int mdiobus_read (int ,int,int) ;
 int mdiobus_write (int ,int,int,int) ;
 int netif_carrier_on (int ) ;

__attribute__((used)) static int ip175c_config_init(struct phy_device *phydev)
{
 int err, i;
 static int full_reset_performed;

 if (full_reset_performed == 0) {


  err = mdiobus_write(phydev->mdio.bus, 30, 0, 0x175c);
  if (err < 0)
   return err;


  err = mdiobus_read(phydev->mdio.bus, 30, 0);


  mdelay(2);


  err = mdiobus_write(phydev->mdio.bus, 29, 31, 0x175c);
  if (err < 0)
   return err;


  err = mdiobus_write(phydev->mdio.bus, 29, 22, 0x420);
  if (err < 0)
   return err;


  for (i = 0; i < 5; i++) {
   err = mdiobus_write(phydev->mdio.bus, i,
         MII_BMCR, BMCR_RESET);
   if (err < 0)
    return err;
  }

  for (i = 0; i < 5; i++)
   err = mdiobus_read(phydev->mdio.bus, i, MII_BMCR);

  mdelay(2);

  full_reset_performed = 1;
 }

 if (phydev->mdio.addr != 4) {
  phydev->state = PHY_RUNNING;
  phydev->speed = SPEED_100;
  phydev->duplex = DUPLEX_FULL;
  phydev->link = 1;
  netif_carrier_on(phydev->attached_dev);
 }

 return 0;
}
