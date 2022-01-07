
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ipheth_device {int net; } ;


 struct ipheth_device* netdev_priv (struct net_device*) ;
 int netif_carrier_ok (int ) ;

__attribute__((used)) static u32 ipheth_ethtool_op_get_link(struct net_device *net)
{
 struct ipheth_device *dev = netdev_priv(net);
 return netif_carrier_ok(dev->net);
}
