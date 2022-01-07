
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_port {int flags; TYPE_1__* app; } ;
struct nfp_eth_table {int dummy; } ;
struct nfp_cpp {int dummy; } ;
struct TYPE_2__ {struct nfp_cpp* cpp; } ;


 int EIO ;
 int NFP_PORT_CHANGED ;
 int clear_bit (int ,int *) ;
 int kfree (struct nfp_eth_table*) ;
 int nfp_err (struct nfp_cpp*,char*) ;
 struct nfp_eth_table* nfp_eth_read_ports (struct nfp_cpp*) ;
 int nfp_net_eth_port_update (struct nfp_cpp*,struct nfp_port*,struct nfp_eth_table*) ;
 int set_bit (int ,int *) ;

int nfp_net_refresh_eth_port(struct nfp_port *port)
{
 struct nfp_cpp *cpp = port->app->cpp;
 struct nfp_eth_table *eth_table;
 int ret;

 clear_bit(NFP_PORT_CHANGED, &port->flags);

 eth_table = nfp_eth_read_ports(cpp);
 if (!eth_table) {
  set_bit(NFP_PORT_CHANGED, &port->flags);
  nfp_err(cpp, "Error refreshing port state table!\n");
  return -EIO;
 }

 ret = nfp_net_eth_port_update(cpp, port, eth_table);

 kfree(eth_table);

 return ret;
}
