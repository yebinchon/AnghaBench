
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x25_asy {int lock; TYPE_1__* tty; scalar_t__ xleft; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int TTY_DO_WRITE_WAKEUP ;
 int clear_bit (int ,int *) ;
 struct x25_asy* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*,char*) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ tty_chars_in_buffer (TYPE_1__*) ;
 int x25_asy_unlock (struct x25_asy*) ;

__attribute__((used)) static void x25_asy_timeout(struct net_device *dev)
{
 struct x25_asy *sl = netdev_priv(dev);

 spin_lock(&sl->lock);
 if (netif_queue_stopped(dev)) {



  netdev_warn(dev, "transmit timed out, %s?\n",
       (tty_chars_in_buffer(sl->tty) || sl->xleft) ?
       "bad line quality" : "driver error");
  sl->xleft = 0;
  clear_bit(TTY_DO_WRITE_WAKEUP, &sl->tty->flags);
  x25_asy_unlock(sl);
 }
 spin_unlock(&sl->lock);
}
