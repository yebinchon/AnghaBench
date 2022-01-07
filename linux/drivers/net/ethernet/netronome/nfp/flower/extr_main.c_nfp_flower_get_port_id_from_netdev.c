
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_app {int dummy; } ;
struct net_device {int dummy; } ;


 int nfp_flower_get_internal_port_id (struct nfp_app*,struct net_device*) ;
 scalar_t__ nfp_flower_internal_port_can_offload (struct nfp_app*,struct net_device*) ;
 int nfp_flower_internal_port_get_port_id (int) ;
 scalar_t__ nfp_netdev_is_nfp_repr (struct net_device*) ;
 int nfp_repr_get_port_id (struct net_device*) ;

u32 nfp_flower_get_port_id_from_netdev(struct nfp_app *app,
           struct net_device *netdev)
{
 int ext_port;

 if (nfp_netdev_is_nfp_repr(netdev)) {
  return nfp_repr_get_port_id(netdev);
 } else if (nfp_flower_internal_port_can_offload(app, netdev)) {
  ext_port = nfp_flower_get_internal_port_id(app, netdev);
  if (ext_port < 0)
   return 0;

  return nfp_flower_internal_port_get_port_id(ext_port);
 }

 return 0;
}
