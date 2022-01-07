
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxnet3_adapter {int wol; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int supported; int wolopts; } ;


 int WAKE_ARP ;
 int WAKE_MAGIC ;
 int WAKE_UCAST ;
 struct vmxnet3_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
vmxnet3_get_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
{
 struct vmxnet3_adapter *adapter = netdev_priv(netdev);

 wol->supported = WAKE_UCAST | WAKE_ARP | WAKE_MAGIC;
 wol->wolopts = adapter->wol;
}
