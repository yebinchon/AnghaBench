
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_port {int eth_port; int type; int eth_id; int flags; } ;
struct nfp_eth_table_port {scalar_t__ override_changed; } ;
struct nfp_eth_table {int dummy; } ;
struct nfp_cpp {int dummy; } ;


 int ASSERT_RTNL () ;
 int EIO ;
 int NFP_PORT_CHANGED ;
 int NFP_PORT_INVALID ;
 int memcpy (int ,struct nfp_eth_table_port*,int) ;
 struct nfp_eth_table_port* nfp_net_find_port (struct nfp_eth_table*,int ) ;
 int nfp_warn (struct nfp_cpp*,char*,int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int
nfp_net_eth_port_update(struct nfp_cpp *cpp, struct nfp_port *port,
   struct nfp_eth_table *eth_table)
{
 struct nfp_eth_table_port *eth_port;

 ASSERT_RTNL();

 eth_port = nfp_net_find_port(eth_table, port->eth_id);
 if (!eth_port) {
  set_bit(NFP_PORT_CHANGED, &port->flags);
  nfp_warn(cpp, "Warning: port #%d not present after reconfig\n",
    port->eth_id);
  return -EIO;
 }
 if (eth_port->override_changed) {
  nfp_warn(cpp, "Port #%d config changed, unregistering. Driver reload required before port will be operational again.\n", port->eth_id);
  port->type = NFP_PORT_INVALID;
 }

 memcpy(port->eth_port, eth_port, sizeof(*eth_port));

 return 0;
}
