
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; void* max_mtu; void* min_mtu; void* mtu; int * netdev_ops; int watchdog_timeo; } ;


 int FJES_TX_RETRY_INTERVAL ;
 int NETIF_F_HW_VLAN_CTAG_FILTER ;
 int ether_setup (struct net_device*) ;
 int fjes_netdev_ops ;
 int fjes_set_ethtool_ops (struct net_device*) ;
 void** fjes_support_mtu ;

__attribute__((used)) static void fjes_netdev_setup(struct net_device *netdev)
{
 ether_setup(netdev);

 netdev->watchdog_timeo = FJES_TX_RETRY_INTERVAL;
 netdev->netdev_ops = &fjes_netdev_ops;
 fjes_set_ethtool_ops(netdev);
 netdev->mtu = fjes_support_mtu[3];
 netdev->min_mtu = fjes_support_mtu[0];
 netdev->max_mtu = fjes_support_mtu[3];
 netdev->features |= NETIF_F_HW_VLAN_CTAG_FILTER;
}
