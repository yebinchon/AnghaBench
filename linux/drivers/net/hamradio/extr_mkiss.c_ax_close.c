
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mkiss {TYPE_1__* tty; } ;
struct TYPE_2__ {int flags; } ;


 int TTY_DO_WRITE_WAKEUP ;
 int clear_bit (int ,int *) ;
 struct mkiss* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int ax_close(struct net_device *dev)
{
 struct mkiss *ax = netdev_priv(dev);

 if (ax->tty)
  clear_bit(TTY_DO_WRITE_WAKEUP, &ax->tty->flags);

 netif_stop_queue(dev);

 return 0;
}
