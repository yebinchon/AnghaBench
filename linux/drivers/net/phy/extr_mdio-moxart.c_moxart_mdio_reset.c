
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {int dummy; } ;


 int BMCR_RESET ;
 int MII_BMCR ;
 int PHY_MAX_ADDR ;
 int moxart_mdio_read (struct mii_bus*,int,int ) ;
 scalar_t__ moxart_mdio_write (struct mii_bus*,int,int ,int) ;

__attribute__((used)) static int moxart_mdio_reset(struct mii_bus *bus)
{
 int data, i;

 for (i = 0; i < PHY_MAX_ADDR; i++) {
  data = moxart_mdio_read(bus, i, MII_BMCR);
  if (data < 0)
   continue;

  data |= BMCR_RESET;
  if (moxart_mdio_write(bus, i, MII_BMCR, data) < 0)
   continue;
 }

 return 0;
}
