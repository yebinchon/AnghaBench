
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct jme_adapter {int reg_pmcs; } ;
struct ethtool_wolinfo {int supported; int wolopts; } ;


 int PMCS_LFEN ;
 int PMCS_LREN ;
 int PMCS_MFEN ;
 int WAKE_MAGIC ;
 int WAKE_PHY ;
 struct jme_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
jme_get_wol(struct net_device *netdev,
  struct ethtool_wolinfo *wol)
{
 struct jme_adapter *jme = netdev_priv(netdev);

 wol->supported = WAKE_MAGIC | WAKE_PHY;

 wol->wolopts = 0;

 if (jme->reg_pmcs & (PMCS_LFEN | PMCS_LREN))
  wol->wolopts |= WAKE_PHY;

 if (jme->reg_pmcs & PMCS_MFEN)
  wol->wolopts |= WAKE_MAGIC;

}
