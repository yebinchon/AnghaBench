
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_port {int dl_port; } ;


 int devlink_port_type_clear (int *) ;

void nfp_devlink_port_type_clear(struct nfp_port *port)
{
 devlink_port_type_clear(&port->dl_port);
}
