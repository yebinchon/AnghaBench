
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_gbe_adapter {int wake_up_evt; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int supported; int wolopts; } ;


 int PCH_GBE_WLC_BR ;
 int PCH_GBE_WLC_IND ;
 int PCH_GBE_WLC_MLT ;
 int PCH_GBE_WLC_MP ;
 int WAKE_BCAST ;
 int WAKE_MAGIC ;
 int WAKE_MCAST ;
 int WAKE_UCAST ;
 struct pch_gbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void pch_gbe_get_wol(struct net_device *netdev,
    struct ethtool_wolinfo *wol)
{
 struct pch_gbe_adapter *adapter = netdev_priv(netdev);

 wol->supported = WAKE_UCAST | WAKE_MCAST | WAKE_BCAST | WAKE_MAGIC;
 wol->wolopts = 0;

 if ((adapter->wake_up_evt & PCH_GBE_WLC_IND))
  wol->wolopts |= WAKE_UCAST;
 if ((adapter->wake_up_evt & PCH_GBE_WLC_MLT))
  wol->wolopts |= WAKE_MCAST;
 if ((adapter->wake_up_evt & PCH_GBE_WLC_BR))
  wol->wolopts |= WAKE_BCAST;
 if ((adapter->wake_up_evt & PCH_GBE_WLC_MP))
  wol->wolopts |= WAKE_MAGIC;
}
