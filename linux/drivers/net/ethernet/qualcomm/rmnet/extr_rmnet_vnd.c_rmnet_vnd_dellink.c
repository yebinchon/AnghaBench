
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rmnet_port {int nr_rmnet_devs; } ;
struct rmnet_endpoint {int * egress_dev; } ;


 int EINVAL ;
 scalar_t__ RMNET_MAX_LOGICAL_EP ;

int rmnet_vnd_dellink(u8 id, struct rmnet_port *port,
        struct rmnet_endpoint *ep)
{
 if (id >= RMNET_MAX_LOGICAL_EP || !ep->egress_dev)
  return -EINVAL;

 ep->egress_dev = ((void*)0);
 port->nr_rmnet_devs--;
 return 0;
}
