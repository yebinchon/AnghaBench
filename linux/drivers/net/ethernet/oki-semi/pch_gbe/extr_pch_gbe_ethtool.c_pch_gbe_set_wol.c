
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_gbe_adapter {int wake_up_evt; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;


 int EOPNOTSUPP ;
 int PCH_GBE_WLC_BR ;
 int PCH_GBE_WLC_IND ;
 int PCH_GBE_WLC_MLT ;
 int PCH_GBE_WLC_MP ;
 int WAKE_ARP ;
 int WAKE_BCAST ;
 int WAKE_MAGIC ;
 int WAKE_MAGICSECURE ;
 int WAKE_MCAST ;
 int WAKE_PHY ;
 int WAKE_UCAST ;
 struct pch_gbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int pch_gbe_set_wol(struct net_device *netdev,
    struct ethtool_wolinfo *wol)
{
 struct pch_gbe_adapter *adapter = netdev_priv(netdev);

 if ((wol->wolopts & (WAKE_PHY | WAKE_ARP | WAKE_MAGICSECURE)))
  return -EOPNOTSUPP;

 adapter->wake_up_evt = 0;

 if ((wol->wolopts & WAKE_UCAST))
  adapter->wake_up_evt |= PCH_GBE_WLC_IND;
 if ((wol->wolopts & WAKE_MCAST))
  adapter->wake_up_evt |= PCH_GBE_WLC_MLT;
 if ((wol->wolopts & WAKE_BCAST))
  adapter->wake_up_evt |= PCH_GBE_WLC_BR;
 if ((wol->wolopts & WAKE_MAGIC))
  adapter->wake_up_evt |= PCH_GBE_WLC_MP;
 return 0;
}
