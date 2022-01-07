
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slip {int dummy; } ;
struct net_device {int dummy; } ;


 struct slip* netdev_priv (struct net_device*) ;
 int sl_free_bufs (struct slip*) ;

__attribute__((used)) static void sl_uninit(struct net_device *dev)
{
 struct slip *sl = netdev_priv(dev);

 sl_free_bufs(sl);
}
