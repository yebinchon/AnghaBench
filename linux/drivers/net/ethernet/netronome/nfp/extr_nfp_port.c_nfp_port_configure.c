
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_port {TYPE_1__* app; scalar_t__ eth_forced; } ;
struct nfp_eth_table_port {int index; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int cpp; } ;


 int EOPNOTSUPP ;
 struct nfp_eth_table_port* __nfp_port_get_eth_port (struct nfp_port*) ;
 int nfp_eth_set_configured (int ,int ,int) ;
 struct nfp_port* nfp_port_from_netdev (struct net_device*) ;

int nfp_port_configure(struct net_device *netdev, bool configed)
{
 struct nfp_eth_table_port *eth_port;
 struct nfp_port *port;
 int err;

 port = nfp_port_from_netdev(netdev);
 eth_port = __nfp_port_get_eth_port(port);
 if (!eth_port)
  return 0;
 if (port->eth_forced)
  return 0;

 err = nfp_eth_set_configured(port->app->cpp, eth_port->index, configed);
 return err < 0 && err != -EOPNOTSUPP ? err : 0;
}
