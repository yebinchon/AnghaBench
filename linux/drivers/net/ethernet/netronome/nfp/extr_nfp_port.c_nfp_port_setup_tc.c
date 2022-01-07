
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_port {int app; } ;
struct net_device {int dummy; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int EOPNOTSUPP ;
 int nfp_app_setup_tc (int ,struct net_device*,int,void*) ;
 struct nfp_port* nfp_port_from_netdev (struct net_device*) ;

int nfp_port_setup_tc(struct net_device *netdev, enum tc_setup_type type,
        void *type_data)
{
 struct nfp_port *port;

 port = nfp_port_from_netdev(netdev);
 if (!port)
  return -EOPNOTSUPP;

 return nfp_app_setup_tc(port->app, netdev, type, type_data);
}
