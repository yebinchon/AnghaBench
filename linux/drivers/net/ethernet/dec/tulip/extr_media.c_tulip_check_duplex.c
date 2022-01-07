
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tulip_private {unsigned int* advertising; unsigned int csr6; int * phys; scalar_t__ full_duplex; int full_duplex_lock; } ;
struct net_device {int dev; } ;


 unsigned int BMSR_LSTATUS ;
 unsigned int FullDuplex ;
 unsigned int LPA_100 ;
 int MII_BMSR ;
 int MII_LPA ;
 unsigned int TxThreshold ;
 int dev_info (int *,char*,...) ;
 scalar_t__ mii_duplex (int ,unsigned int) ;
 struct tulip_private* netdev_priv (struct net_device*) ;
 int tulip_debug ;
 void* tulip_mdio_read (struct net_device*,int ,int ) ;
 int tulip_restart_rxtx (struct tulip_private*) ;

int tulip_check_duplex(struct net_device *dev)
{
 struct tulip_private *tp = netdev_priv(dev);
 unsigned int bmsr, lpa, negotiated, new_csr6;

 bmsr = tulip_mdio_read(dev, tp->phys[0], MII_BMSR);
 lpa = tulip_mdio_read(dev, tp->phys[0], MII_LPA);
 if (tulip_debug > 1)
  dev_info(&dev->dev, "MII status %04x, Link partner report %04x\n",
    bmsr, lpa);
 if (bmsr == 0xffff)
  return -2;
 if ((bmsr & BMSR_LSTATUS) == 0) {
  int new_bmsr = tulip_mdio_read(dev, tp->phys[0], MII_BMSR);
  if ((new_bmsr & BMSR_LSTATUS) == 0) {
   if (tulip_debug > 1)
    dev_info(&dev->dev,
      "No link beat on the MII interface, status %04x\n",
      new_bmsr);
   return -1;
  }
 }
 negotiated = lpa & tp->advertising[0];
 tp->full_duplex = mii_duplex(tp->full_duplex_lock, negotiated);

 new_csr6 = tp->csr6;

 if (negotiated & LPA_100) new_csr6 &= ~TxThreshold;
 else new_csr6 |= TxThreshold;
 if (tp->full_duplex) new_csr6 |= FullDuplex;
 else new_csr6 &= ~FullDuplex;

 if (new_csr6 != tp->csr6) {
  tp->csr6 = new_csr6;
  tulip_restart_rxtx(tp);

  if (tulip_debug > 0)
   dev_info(&dev->dev,
     "Setting %s-duplex based on MII#%d link partner capability of %04x\n",
     tp->full_duplex ? "full" : "half",
     tp->phys[0], lpa);
  return 1;
 }

 return 0;
}
