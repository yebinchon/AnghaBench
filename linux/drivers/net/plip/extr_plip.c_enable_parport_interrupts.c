
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct parport {TYPE_2__* ops; } ;
struct net_local {TYPE_1__* pardev; } ;
struct net_device {int irq; } ;
struct TYPE_4__ {int (* enable_irq ) (struct parport*) ;} ;
struct TYPE_3__ {struct parport* port; } ;


 scalar_t__ netdev_priv (struct net_device*) ;
 int stub1 (struct parport*) ;

__attribute__((used)) static inline void enable_parport_interrupts (struct net_device *dev)
{
 if (dev->irq != -1)
 {
  struct parport *port =
     ((struct net_local *)netdev_priv(dev))->pardev->port;
  port->ops->enable_irq (port);
 }
}
