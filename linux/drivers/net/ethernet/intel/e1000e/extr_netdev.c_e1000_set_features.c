
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; } ;
struct e1000_adapter {int flags2; int flags; } ;
typedef int netdev_features_t ;


 int FLAG2_CRC_STRIPPING ;
 int FLAG2_DFLT_CRC_STRIPPING ;
 int FLAG_TSO_FORCE ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int NETIF_F_RXALL ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_RXFCS ;
 int NETIF_F_RXHASH ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 int e1000e_reinit_locked (struct e1000_adapter*) ;
 int e1000e_reset (struct e1000_adapter*) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int e1000_set_features(struct net_device *netdev,
         netdev_features_t features)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 netdev_features_t changed = features ^ netdev->features;

 if (changed & (NETIF_F_TSO | NETIF_F_TSO6))
  adapter->flags |= FLAG_TSO_FORCE;

 if (!(changed & (NETIF_F_HW_VLAN_CTAG_RX | NETIF_F_HW_VLAN_CTAG_TX |
    NETIF_F_RXCSUM | NETIF_F_RXHASH | NETIF_F_RXFCS |
    NETIF_F_RXALL)))
  return 0;

 if (changed & NETIF_F_RXFCS) {
  if (features & NETIF_F_RXFCS) {
   adapter->flags2 &= ~FLAG2_CRC_STRIPPING;
  } else {



   if (adapter->flags2 & FLAG2_DFLT_CRC_STRIPPING)
    adapter->flags2 |= FLAG2_CRC_STRIPPING;
   else
    adapter->flags2 &= ~FLAG2_CRC_STRIPPING;
  }
 }

 netdev->features = features;

 if (netif_running(netdev))
  e1000e_reinit_locked(adapter);
 else
  e1000e_reset(adapter);

 return 1;
}
