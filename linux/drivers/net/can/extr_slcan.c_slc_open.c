
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slcan {int flags; int * tty; } ;
struct net_device {int dummy; } ;


 int ENODEV ;
 int SLF_INUSE ;
 struct slcan* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;

__attribute__((used)) static int slc_open(struct net_device *dev)
{
 struct slcan *sl = netdev_priv(dev);

 if (sl->tty == ((void*)0))
  return -ENODEV;

 sl->flags &= (1 << SLF_INUSE);
 netif_start_queue(dev);
 return 0;
}
