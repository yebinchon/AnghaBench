
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_port {int flags; } ;
struct nfp_eth_table_port {int dummy; } ;


 int NFP_PORT_CHANGED ;
 struct nfp_eth_table_port* __nfp_port_get_eth_port (struct nfp_port*) ;
 scalar_t__ nfp_net_refresh_eth_port (struct nfp_port*) ;
 scalar_t__ test_bit (int ,int *) ;

struct nfp_eth_table_port *nfp_port_get_eth_port(struct nfp_port *port)
{
 if (!__nfp_port_get_eth_port(port))
  return ((void*)0);

 if (test_bit(NFP_PORT_CHANGED, &port->flags))
  if (nfp_net_refresh_eth_port(port))
   return ((void*)0);

 return __nfp_port_get_eth_port(port);
}
