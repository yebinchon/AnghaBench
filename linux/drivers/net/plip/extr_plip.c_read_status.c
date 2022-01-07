
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct parport {TYPE_2__* ops; } ;
struct net_local {TYPE_1__* pardev; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {unsigned char (* read_status ) (struct parport*) ;} ;
struct TYPE_3__ {struct parport* port; } ;


 scalar_t__ netdev_priv (struct net_device*) ;
 unsigned char stub1 (struct parport*) ;

__attribute__((used)) static inline unsigned char read_status (struct net_device *dev)
{
 struct parport *port =
    ((struct net_local *)netdev_priv(dev))->pardev->port;

 return port->ops->read_status (port);
}
