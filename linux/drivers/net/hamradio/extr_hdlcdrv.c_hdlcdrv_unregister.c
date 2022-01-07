
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hdlcdrv_state {scalar_t__ magic; TYPE_1__* ops; scalar_t__ opened; } ;
struct TYPE_2__ {int (* close ) (struct net_device*) ;} ;


 int BUG_ON (int) ;
 scalar_t__ HDLCDRV_MAGIC ;
 int free_netdev (struct net_device*) ;
 struct hdlcdrv_state* netdev_priv (struct net_device*) ;
 int stub1 (struct net_device*) ;
 int unregister_netdev (struct net_device*) ;

void hdlcdrv_unregister(struct net_device *dev)
{
 struct hdlcdrv_state *s = netdev_priv(dev);

 BUG_ON(s->magic != HDLCDRV_MAGIC);

 if (s->opened && s->ops->close)
  s->ops->close(dev);
 unregister_netdev(dev);

 free_netdev(dev);
}
