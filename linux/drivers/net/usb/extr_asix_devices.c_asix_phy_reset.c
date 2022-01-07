
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int phy_id; } ;
struct usbnet {TYPE_1__ mii; int net; } ;


 int BMCR_RESET ;
 int MII_BMCR ;
 int asix_mdio_read (int ,int ,int ) ;
 int asix_mdio_write (int ,int ,int ,unsigned int) ;
 int netdev_err (int ,char*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void asix_phy_reset(struct usbnet *dev, unsigned int reset_bits)
{
 unsigned int timeout = 5000;

 asix_mdio_write(dev->net, dev->mii.phy_id, MII_BMCR, reset_bits);


 udelay(500);


 while (timeout--) {
  if (asix_mdio_read(dev->net, dev->mii.phy_id, MII_BMCR)
       & BMCR_RESET)
   udelay(100);
  else
   return;
 }

 netdev_err(dev->net, "BMCR_RESET timeout on phy_id %d\n",
     dev->mii.phy_id);
}
