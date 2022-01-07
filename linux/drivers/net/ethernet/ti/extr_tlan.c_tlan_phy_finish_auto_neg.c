
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct tlan_priv {int* phy; size_t phy_num; int tlan_full_duplex; scalar_t__ duplex; TYPE_1__* adapter; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int HZ ;
 int MII_AN_ADV ;
 int MII_AN_LPA ;
 int MII_GC_AUTOENB ;
 int MII_GC_DUPLEX ;
 int MII_GEN_CTL ;
 int MII_GEN_STS ;
 int MII_GS_AUTOCMPLT ;
 int TLAN_ADAPTER_USE_INTERN_10 ;
 scalar_t__ TLAN_DUPLEX_FULL ;
 int TLAN_TIMER_FINISH_RESET ;
 int TLAN_TIMER_PHY_FINISH_AN ;
 int TLAN_TIMER_PHY_PDOWN ;
 int msecs_to_jiffies (int) ;
 int netdev_info (struct net_device*,char*) ;
 struct tlan_priv* netdev_priv (struct net_device*) ;
 int tlan_mii_read_reg (struct net_device*,int,int ,int*) ;
 int tlan_mii_write_reg (struct net_device*,int,int ,int) ;
 int tlan_set_timer (struct net_device*,int,int ) ;
 int udelay (int) ;

__attribute__((used)) static void tlan_phy_finish_auto_neg(struct net_device *dev)
{
 struct tlan_priv *priv = netdev_priv(dev);
 u16 an_adv;
 u16 an_lpa;
 u16 mode;
 u16 phy;
 u16 status;

 phy = priv->phy[priv->phy_num];

 tlan_mii_read_reg(dev, phy, MII_GEN_STS, &status);
 udelay(1000);
 tlan_mii_read_reg(dev, phy, MII_GEN_STS, &status);

 if (!(status & MII_GS_AUTOCMPLT)) {



  tlan_set_timer(dev, 2 * HZ, TLAN_TIMER_PHY_FINISH_AN);
  return;
 }

 netdev_info(dev, "Autonegotiation complete\n");
 tlan_mii_read_reg(dev, phy, MII_AN_ADV, &an_adv);
 tlan_mii_read_reg(dev, phy, MII_AN_LPA, &an_lpa);
 mode = an_adv & an_lpa & 0x03E0;
 if (mode & 0x0100)
  priv->tlan_full_duplex = 1;
 else if (!(mode & 0x0080) && (mode & 0x0040))
  priv->tlan_full_duplex = 1;


 if ((!(mode & 0x0180)) &&
     (priv->adapter->flags & TLAN_ADAPTER_USE_INTERN_10) &&
     (priv->phy_num != 0)) {
  priv->phy_num = 0;
  tlan_set_timer(dev, msecs_to_jiffies(400), TLAN_TIMER_PHY_PDOWN);
  return;
 }

 if (priv->phy_num == 0) {
  if ((priv->duplex == TLAN_DUPLEX_FULL) ||
      (an_adv & an_lpa & 0x0040)) {
   tlan_mii_write_reg(dev, phy, MII_GEN_CTL,
        MII_GC_AUTOENB | MII_GC_DUPLEX);
   netdev_info(dev, "Starting internal PHY with FULL-DUPLEX\n");
  } else {
   tlan_mii_write_reg(dev, phy, MII_GEN_CTL,
        MII_GC_AUTOENB);
   netdev_info(dev, "Starting internal PHY with HALF-DUPLEX\n");
  }
 }



 tlan_set_timer(dev, msecs_to_jiffies(100), TLAN_TIMER_FINISH_RESET);

}
