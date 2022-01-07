
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;
struct atl2_adapter {int wol; } ;


 int ATLX_WUFC_LNKC ;
 int ATLX_WUFC_MAG ;
 int EOPNOTSUPP ;
 int WAKE_ARP ;
 int WAKE_BCAST ;
 int WAKE_MAGIC ;
 int WAKE_MAGICSECURE ;
 int WAKE_MCAST ;
 int WAKE_PHY ;
 int WAKE_UCAST ;
 struct atl2_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int atl2_set_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
{
 struct atl2_adapter *adapter = netdev_priv(netdev);

 if (wol->wolopts & (WAKE_ARP | WAKE_MAGICSECURE))
  return -EOPNOTSUPP;

 if (wol->wolopts & (WAKE_UCAST | WAKE_BCAST | WAKE_MCAST))
  return -EOPNOTSUPP;


 adapter->wol = 0;

 if (wol->wolopts & WAKE_MAGIC)
  adapter->wol |= ATLX_WUFC_MAG;
 if (wol->wolopts & WAKE_PHY)
  adapter->wol |= ATLX_WUFC_LNKC;

 return 0;
}
