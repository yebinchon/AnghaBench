
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_port {scalar_t__ type; struct nfp_eth_table_port* eth_port; } ;
struct nfp_eth_table_port {int dummy; } ;


 scalar_t__ NFP_PORT_PHYS_PORT ;

struct nfp_eth_table_port *__nfp_port_get_eth_port(struct nfp_port *port)
{
 if (!port)
  return ((void*)0);
 if (port->type != NFP_PORT_PHYS_PORT)
  return ((void*)0);

 return port->eth_port;
}
