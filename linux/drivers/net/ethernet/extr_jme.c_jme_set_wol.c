
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct jme_adapter {int reg_pmcs; } ;
struct ethtool_wolinfo {int wolopts; } ;


 int EOPNOTSUPP ;
 int PMCS_LFEN ;
 int PMCS_LREN ;
 int PMCS_MFEN ;
 int WAKE_ARP ;
 int WAKE_BCAST ;
 int WAKE_MAGIC ;
 int WAKE_MAGICSECURE ;
 int WAKE_MCAST ;
 int WAKE_PHY ;
 int WAKE_UCAST ;
 struct jme_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
jme_set_wol(struct net_device *netdev,
  struct ethtool_wolinfo *wol)
{
 struct jme_adapter *jme = netdev_priv(netdev);

 if (wol->wolopts & (WAKE_MAGICSECURE |
    WAKE_UCAST |
    WAKE_MCAST |
    WAKE_BCAST |
    WAKE_ARP))
  return -EOPNOTSUPP;

 jme->reg_pmcs = 0;

 if (wol->wolopts & WAKE_PHY)
  jme->reg_pmcs |= PMCS_LFEN | PMCS_LREN;

 if (wol->wolopts & WAKE_MAGIC)
  jme->reg_pmcs |= PMCS_MFEN;

 return 0;
}
