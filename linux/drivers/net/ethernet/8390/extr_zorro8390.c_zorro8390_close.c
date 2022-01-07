
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ei_device {int dummy; } ;


 int __ei_close (struct net_device*) ;
 int ifdown ;
 struct ei_device* netdev_priv (struct net_device*) ;
 int netif_dbg (struct ei_device*,int ,struct net_device*,char*) ;

__attribute__((used)) static int zorro8390_close(struct net_device *dev)
{
 struct ei_device *ei_local = netdev_priv(dev);

 netif_dbg(ei_local, ifdown, dev, "Shutting down ethercard\n");
 __ei_close(dev);
 return 0;
}
