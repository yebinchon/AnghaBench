
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_repr {struct nfp_flower_repr_priv* app_priv; struct nfp_app* app; } ;
struct nfp_flower_repr_priv {int on_bridge; } ;
struct nfp_app {int dummy; } ;
struct netdev_notifier_changeupper_info {scalar_t__ linking; struct net_device* upper_dev; } ;
struct net_device {int flags; } ;


 int IFF_UP ;
 unsigned long NETDEV_CHANGEADDR ;
 unsigned long NETDEV_CHANGEUPPER ;
 unsigned long NETDEV_DOWN ;
 unsigned long NETDEV_UP ;
 int NFP_TUNNEL_MAC_OFFLOAD_ADD ;
 int NFP_TUNNEL_MAC_OFFLOAD_DEL ;
 int NFP_TUNNEL_MAC_OFFLOAD_MOD ;
 int NOTIFY_OK ;
 int netdev_name (struct net_device*) ;
 struct nfp_repr* netdev_priv (struct net_device*) ;
 int nfp_flower_cmsg_warn (struct nfp_app*,char*,int ) ;
 int nfp_flower_is_supported_bridge (struct net_device*) ;
 int nfp_netdev_is_nfp_repr (struct net_device*) ;
 int nfp_tunnel_offload_mac (struct nfp_app*,struct net_device*,int ) ;

int nfp_tunnel_mac_event_handler(struct nfp_app *app,
     struct net_device *netdev,
     unsigned long event, void *ptr)
{
 int err;

 if (event == NETDEV_DOWN) {
  err = nfp_tunnel_offload_mac(app, netdev,
          NFP_TUNNEL_MAC_OFFLOAD_DEL);
  if (err)
   nfp_flower_cmsg_warn(app, "Failed to delete offload MAC on %s.\n",
          netdev_name(netdev));
 } else if (event == NETDEV_UP) {
  err = nfp_tunnel_offload_mac(app, netdev,
          NFP_TUNNEL_MAC_OFFLOAD_ADD);
  if (err)
   nfp_flower_cmsg_warn(app, "Failed to offload MAC on %s.\n",
          netdev_name(netdev));
 } else if (event == NETDEV_CHANGEADDR) {

  if (!(netdev->flags & IFF_UP))
   return NOTIFY_OK;

  err = nfp_tunnel_offload_mac(app, netdev,
          NFP_TUNNEL_MAC_OFFLOAD_MOD);
  if (err)
   nfp_flower_cmsg_warn(app, "Failed to offload MAC change on %s.\n",
          netdev_name(netdev));
 } else if (event == NETDEV_CHANGEUPPER) {






  struct netdev_notifier_changeupper_info *info = ptr;
  struct net_device *upper = info->upper_dev;
  struct nfp_flower_repr_priv *repr_priv;
  struct nfp_repr *repr;

  if (!nfp_netdev_is_nfp_repr(netdev) ||
      !nfp_flower_is_supported_bridge(upper))
   return NOTIFY_OK;

  repr = netdev_priv(netdev);
  if (repr->app != app)
   return NOTIFY_OK;

  repr_priv = repr->app_priv;

  if (info->linking) {
   if (nfp_tunnel_offload_mac(app, netdev,
         NFP_TUNNEL_MAC_OFFLOAD_DEL))
    nfp_flower_cmsg_warn(app, "Failed to delete offloaded MAC on %s.\n",
           netdev_name(netdev));
   repr_priv->on_bridge = 1;
  } else {
   repr_priv->on_bridge = 0;

   if (!(netdev->flags & IFF_UP))
    return NOTIFY_OK;

   if (nfp_tunnel_offload_mac(app, netdev,
         NFP_TUNNEL_MAC_OFFLOAD_ADD))
    nfp_flower_cmsg_warn(app, "Failed to offload MAC on %s.\n",
           netdev_name(netdev));
  }
 }
 return NOTIFY_OK;
}
