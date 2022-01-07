
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_port {int dev; } ;
struct net_device {int dummy; } ;
struct neighbour {int dev; } ;


 struct rocker_port* netdev_priv (int ) ;
 int netdev_warn (int ,char*,int) ;
 int rocker_world_port_neigh_destroy (struct rocker_port*,struct neighbour*) ;

__attribute__((used)) static void rocker_port_neigh_destroy(struct net_device *dev,
          struct neighbour *n)
{
 struct rocker_port *rocker_port = netdev_priv(n->dev);
 int err;

 err = rocker_world_port_neigh_destroy(rocker_port, n);
 if (err)
  netdev_warn(rocker_port->dev, "failed to handle neigh destroy (err %d)\n",
       err);
}
