
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct enc28j60_net {int dummy; } ;


 int enc28j60_hw_disable (struct enc28j60_net*) ;
 int enc28j60_lowpower (struct enc28j60_net*,int) ;
 struct enc28j60_net* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int enc28j60_net_close(struct net_device *dev)
{
 struct enc28j60_net *priv = netdev_priv(dev);

 enc28j60_hw_disable(priv);
 enc28j60_lowpower(priv, 1);
 netif_stop_queue(dev);

 return 0;
}
