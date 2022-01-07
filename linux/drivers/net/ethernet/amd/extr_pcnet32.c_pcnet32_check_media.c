
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ulong ;
typedef int u32 ;
struct TYPE_5__ {int full_duplex; } ;
struct pcnet32_private {scalar_t__ chip_version; int phycount; TYPE_1__* a; TYPE_2__ mii_if; scalar_t__ mii; scalar_t__ port_tp; int autoneg; } ;
struct net_device {int base_addr; } ;
struct ethtool_cmd {scalar_t__ duplex; int cmd; } ;
struct TYPE_4__ {int (* read_bcr ) (int ,int) ;int (* write_bcr ) (int ,int,int) ;} ;


 scalar_t__ DUPLEX_FULL ;
 int ETHTOOL_GSET ;
 scalar_t__ PCNET32_79C970A ;
 int ethtool_cmd_speed (struct ethtool_cmd*) ;
 int link ;
 int mii_ethtool_gset (TYPE_2__*,struct ethtool_cmd*) ;
 int mii_link_ok (TYPE_2__*) ;
 int netdev_info (struct net_device*,char*,int ,char*) ;
 struct pcnet32_private* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_info (struct pcnet32_private*,int ,struct net_device*,char*) ;
 scalar_t__ netif_msg_link (struct pcnet32_private*) ;
 int pcnet32_check_otherphy (struct net_device*) ;
 int stub1 (int ,int) ;
 int stub2 (int ,int) ;
 int stub3 (int ,int) ;
 int stub4 (int ,int,int) ;

__attribute__((used)) static void pcnet32_check_media(struct net_device *dev, int verbose)
{
 struct pcnet32_private *lp = netdev_priv(dev);
 int curr_link;
 int prev_link = netif_carrier_ok(dev) ? 1 : 0;
 u32 bcr9;

 if (lp->mii) {
  curr_link = mii_link_ok(&lp->mii_if);
 } else if (lp->chip_version == PCNET32_79C970A) {
  ulong ioaddr = dev->base_addr;

  if (!lp->autoneg && lp->port_tp)
   curr_link = (lp->a->read_bcr(ioaddr, 4) != 0xc0);
  else
   curr_link = 1;
 } else {
  ulong ioaddr = dev->base_addr;
  curr_link = (lp->a->read_bcr(ioaddr, 4) != 0xc0);
 }
 if (!curr_link) {
  if (prev_link || verbose) {
   netif_carrier_off(dev);
   netif_info(lp, link, dev, "link down\n");
  }
  if (lp->phycount > 1) {
   curr_link = pcnet32_check_otherphy(dev);
   prev_link = 0;
  }
 } else if (verbose || !prev_link) {
  netif_carrier_on(dev);
  if (lp->mii) {
   if (netif_msg_link(lp)) {
    struct ethtool_cmd ecmd = {
     .cmd = ETHTOOL_GSET };
    mii_ethtool_gset(&lp->mii_if, &ecmd);
    netdev_info(dev, "link up, %uMbps, %s-duplex\n",
         ethtool_cmd_speed(&ecmd),
         (ecmd.duplex == DUPLEX_FULL)
         ? "full" : "half");
   }
   bcr9 = lp->a->read_bcr(dev->base_addr, 9);
   if ((bcr9 & (1 << 0)) != lp->mii_if.full_duplex) {
    if (lp->mii_if.full_duplex)
     bcr9 |= (1 << 0);
    else
     bcr9 &= ~(1 << 0);
    lp->a->write_bcr(dev->base_addr, 9, bcr9);
   }
  } else {
   netif_info(lp, link, dev, "link up\n");
  }
 }
}
