
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skge_port {int netdev; } ;
struct net_device {int dev_addr; } ;


 struct skge_port* netdev_priv (struct net_device*) ;
 int netif_info (struct skge_port const*,int ,int ,char*,int ) ;
 int probe ;

__attribute__((used)) static void skge_show_addr(struct net_device *dev)
{
 const struct skge_port *skge = netdev_priv(dev);

 netif_info(skge, probe, skge->netdev, "addr %pM\n", dev->dev_addr);
}
