
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_port {int dummy; } ;
struct nfp_port {struct devlink_port dl_port; } ;
struct net_device {int dummy; } ;


 struct nfp_port* nfp_port_from_netdev (struct net_device*) ;

struct devlink_port *nfp_devlink_get_devlink_port(struct net_device *netdev)
{
 struct nfp_port *port;

 port = nfp_port_from_netdev(netdev);
 if (!port)
  return ((void*)0);

 return &port->dl_port;
}
