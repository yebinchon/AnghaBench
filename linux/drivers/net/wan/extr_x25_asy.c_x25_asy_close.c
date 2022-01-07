
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x25_asy {int lock; scalar_t__ xleft; scalar_t__ rcount; TYPE_1__* tty; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int TTY_DO_WRITE_WAKEUP ;
 int clear_bit (int ,int *) ;
 struct x25_asy* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int x25_asy_close(struct net_device *dev)
{
 struct x25_asy *sl = netdev_priv(dev);

 spin_lock(&sl->lock);
 if (sl->tty)
  clear_bit(TTY_DO_WRITE_WAKEUP, &sl->tty->flags);

 netif_stop_queue(dev);
 sl->rcount = 0;
 sl->xleft = 0;
 spin_unlock(&sl->lock);
 return 0;
}
