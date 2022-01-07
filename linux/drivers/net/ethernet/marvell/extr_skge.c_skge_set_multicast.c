
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skge_port {int hw; } ;
struct net_device {int dummy; } ;


 int genesis_set_multicast (struct net_device*) ;
 scalar_t__ is_genesis (int ) ;
 struct skge_port* netdev_priv (struct net_device*) ;
 int yukon_set_multicast (struct net_device*) ;

__attribute__((used)) static void skge_set_multicast(struct net_device *dev)
{
 struct skge_port *skge = netdev_priv(dev);

 if (is_genesis(skge->hw))
  genesis_set_multicast(dev);
 else
  yukon_set_multicast(dev);

}
