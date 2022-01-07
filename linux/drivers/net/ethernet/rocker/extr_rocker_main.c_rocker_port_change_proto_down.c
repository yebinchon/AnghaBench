
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rocker_port {TYPE_1__* dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int flags; int proto_down; } ;


 int IFF_UP ;
 struct rocker_port* netdev_priv (struct net_device*) ;
 int rocker_port_set_enable (struct rocker_port*,int) ;

__attribute__((used)) static int rocker_port_change_proto_down(struct net_device *dev,
      bool proto_down)
{
 struct rocker_port *rocker_port = netdev_priv(dev);

 if (rocker_port->dev->flags & IFF_UP)
  rocker_port_set_enable(rocker_port, !proto_down);
 rocker_port->dev->proto_down = proto_down;
 return 0;
}
