
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sky2_port {int dummy; } ;
struct net_device {int dev_addr; } ;


 struct sky2_port* netdev_priv (struct net_device*) ;
 int netif_info (struct sky2_port const*,int ,struct net_device*,char*,int ) ;
 int probe ;

__attribute__((used)) static void sky2_show_addr(struct net_device *dev)
{
 const struct sky2_port *sky2 = netdev_priv(dev);

 netif_info(sky2, probe, dev, "addr %pM\n", dev->dev_addr);
}
