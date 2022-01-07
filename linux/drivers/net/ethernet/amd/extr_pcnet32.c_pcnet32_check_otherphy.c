
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_if_info {int phy_id; } ;
struct pcnet32_private {int phymask; struct mii_if_info mii_if; } ;
struct net_device {int dummy; } ;


 int BMCR_ISOLATE ;
 int MII_BMCR ;
 int PCNET32_MAX_PHYS ;
 int link ;
 int mdio_read (struct net_device*,int,int ) ;
 int mdio_write (struct net_device*,int,int ,int) ;
 scalar_t__ mii_link_ok (struct mii_if_info*) ;
 struct pcnet32_private* netdev_priv (struct net_device*) ;
 int netif_info (struct pcnet32_private*,int ,struct net_device*,char*,int) ;

__attribute__((used)) static int pcnet32_check_otherphy(struct net_device *dev)
{
 struct pcnet32_private *lp = netdev_priv(dev);
 struct mii_if_info mii = lp->mii_if;
 u16 bmcr;
 int i;

 for (i = 0; i < PCNET32_MAX_PHYS; i++) {
  if (i == lp->mii_if.phy_id)
   continue;
  if (lp->phymask & (1 << i)) {
   mii.phy_id = i;
   if (mii_link_ok(&mii)) {

    netif_info(lp, link, dev, "Using PHY number %d\n",
        i);


    bmcr =
        mdio_read(dev, lp->mii_if.phy_id, MII_BMCR);
    mdio_write(dev, lp->mii_if.phy_id, MII_BMCR,
        bmcr | BMCR_ISOLATE);


    bmcr = mdio_read(dev, i, MII_BMCR);
    mdio_write(dev, i, MII_BMCR,
        bmcr & ~BMCR_ISOLATE);


    lp->mii_if.phy_id = i;
    return 1;
   }
  }
 }
 return 0;
}
