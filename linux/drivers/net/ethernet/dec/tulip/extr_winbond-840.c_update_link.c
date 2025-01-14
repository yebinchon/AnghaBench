
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int advertising; int force_media; } ;
struct netdev_private {int csr6; int mii; int * phys; TYPE_1__ mii_if; } ;
struct net_device {int dev; } ;


 int BMCR_FULLDPLX ;
 int BMCR_SPEED100 ;
 int LPA_100FULL ;
 int LPA_10FULL ;
 int MII_BMCR ;
 int MII_BMSR ;
 int MII_DAVICOM_DM9101 ;
 int MII_LPA ;
 scalar_t__ debug ;
 int dev_info (int *,char*,int,...) ;
 int mdio_read (struct net_device*,int ,int ) ;
 struct netdev_private* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;

__attribute__((used)) static int update_link(struct net_device *dev)
{
 struct netdev_private *np = netdev_priv(dev);
 int duplex, fasteth, result, mii_reg;


 mii_reg = mdio_read(dev, np->phys[0], MII_BMSR);

 if (mii_reg == 0xffff)
  return np->csr6;

 mii_reg = mdio_read(dev, np->phys[0], MII_BMSR);
 if (!(mii_reg & 0x4)) {
  if (netif_carrier_ok(dev)) {
   if (debug)
    dev_info(&dev->dev,
      "MII #%d reports no link. Disabling watchdog\n",
      np->phys[0]);
   netif_carrier_off(dev);
  }
  return np->csr6;
 }
 if (!netif_carrier_ok(dev)) {
  if (debug)
   dev_info(&dev->dev,
     "MII #%d link is back. Enabling watchdog\n",
     np->phys[0]);
  netif_carrier_on(dev);
 }

 if ((np->mii & ~0xf) == MII_DAVICOM_DM9101) {
  mii_reg = mdio_read(dev, np->phys[0], MII_BMCR);
  duplex = mii_reg & BMCR_FULLDPLX;
  fasteth = mii_reg & BMCR_SPEED100;
 } else {
  int negotiated;
  mii_reg = mdio_read(dev, np->phys[0], MII_LPA);
  negotiated = mii_reg & np->mii_if.advertising;

  duplex = (negotiated & LPA_100FULL) || ((negotiated & 0x02C0) == LPA_10FULL);
  fasteth = negotiated & 0x380;
 }
 duplex |= np->mii_if.force_media;

 result = np->csr6 & ~0x20000200;
 if (duplex)
  result |= 0x200;
 if (fasteth)
  result |= 0x20000000;
 if (result != np->csr6 && debug)
  dev_info(&dev->dev,
    "Setting %dMBit-%s-duplex based on MII#%d\n",
    fasteth ? 100 : 10, duplex ? "full" : "half",
    np->phys[0]);
 return result;
}
