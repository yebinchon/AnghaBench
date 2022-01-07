
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_port {int netdev; int dl_port; } ;


 int devlink_port_type_eth_set (int *,int ) ;

void nfp_devlink_port_type_eth_set(struct nfp_port *port)
{
 devlink_port_type_eth_set(&port->dl_port, port->netdev);
}
