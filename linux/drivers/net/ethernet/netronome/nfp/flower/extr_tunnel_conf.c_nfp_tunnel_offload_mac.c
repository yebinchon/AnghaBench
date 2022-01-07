
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nfp_repr {struct nfp_flower_repr_priv* app_priv; struct nfp_app* app; } ;
struct nfp_flower_repr_priv {int mac_offloaded; int * offloaded_mac_addr; scalar_t__ on_bridge; } ;
struct nfp_flower_non_repr_priv {int mac_offloaded; int * offloaded_mac_addr; } ;
struct nfp_app {int dummy; } ;
struct net_device {int * dev_addr; } ;
typedef enum nfp_flower_mac_offload_cmd { ____Placeholder_nfp_flower_mac_offload_cmd } nfp_flower_mac_offload_cmd ;


 int EINVAL ;
 int ENOMEM ;



 int __nfp_flower_non_repr_priv_get (struct nfp_flower_non_repr_priv*) ;
 int __nfp_flower_non_repr_priv_put (struct nfp_flower_non_repr_priv*) ;
 int ether_addr_copy (int *,int *) ;
 int ether_addr_equal (int *,int *) ;
 int is_valid_ether_addr (int *) ;
 int netdev_name (struct net_device*) ;
 struct nfp_repr* netdev_priv (struct net_device*) ;
 scalar_t__ nfp_fl_is_netdev_to_offload (struct net_device*) ;
 int nfp_flower_cmsg_warn (struct nfp_app*,char*,int ) ;
 struct nfp_flower_non_repr_priv* nfp_flower_non_repr_priv_get (struct nfp_app*,struct net_device*) ;
 scalar_t__ nfp_netdev_is_nfp_repr (struct net_device*) ;
 int nfp_repr_get_port_id (struct net_device*) ;
 int nfp_tunnel_add_shared_mac (struct nfp_app*,struct net_device*,int,int) ;
 int nfp_tunnel_del_shared_mac (struct nfp_app*,struct net_device*,int *,int) ;
 int nfp_tunnel_port_is_phy_repr (int) ;

__attribute__((used)) static int
nfp_tunnel_offload_mac(struct nfp_app *app, struct net_device *netdev,
         enum nfp_flower_mac_offload_cmd cmd)
{
 struct nfp_flower_non_repr_priv *nr_priv = ((void*)0);
 bool non_repr = 0, *mac_offloaded;
 u8 *off_mac = ((void*)0);
 int err, port = 0;

 if (nfp_netdev_is_nfp_repr(netdev)) {
  struct nfp_flower_repr_priv *repr_priv;
  struct nfp_repr *repr;

  repr = netdev_priv(netdev);
  if (repr->app != app)
   return 0;

  repr_priv = repr->app_priv;
  if (repr_priv->on_bridge)
   return 0;

  mac_offloaded = &repr_priv->mac_offloaded;
  off_mac = &repr_priv->offloaded_mac_addr[0];
  port = nfp_repr_get_port_id(netdev);
  if (!nfp_tunnel_port_is_phy_repr(port))
   return 0;
 } else if (nfp_fl_is_netdev_to_offload(netdev)) {
  nr_priv = nfp_flower_non_repr_priv_get(app, netdev);
  if (!nr_priv)
   return -ENOMEM;

  mac_offloaded = &nr_priv->mac_offloaded;
  off_mac = &nr_priv->offloaded_mac_addr[0];
  non_repr = 1;
 } else {
  return 0;
 }

 if (!is_valid_ether_addr(netdev->dev_addr)) {
  err = -EINVAL;
  goto err_put_non_repr_priv;
 }

 if (cmd == 128 && !*mac_offloaded)
  cmd = 130;

 switch (cmd) {
 case 130:
  err = nfp_tunnel_add_shared_mac(app, netdev, port, 0);
  if (err)
   goto err_put_non_repr_priv;

  if (non_repr)
   __nfp_flower_non_repr_priv_get(nr_priv);

  *mac_offloaded = 1;
  ether_addr_copy(off_mac, netdev->dev_addr);
  break;
 case 129:

  if (!*mac_offloaded)
   break;

  if (non_repr)
   __nfp_flower_non_repr_priv_put(nr_priv);

  *mac_offloaded = 0;

  err = nfp_tunnel_del_shared_mac(app, netdev, netdev->dev_addr,
      0);
  if (err)
   goto err_put_non_repr_priv;

  break;
 case 128:

  if (ether_addr_equal(netdev->dev_addr, off_mac))
   break;

  err = nfp_tunnel_add_shared_mac(app, netdev, port, 1);
  if (err)
   goto err_put_non_repr_priv;


  err = nfp_tunnel_del_shared_mac(app, netdev, off_mac, 1);
  if (err)
   nfp_flower_cmsg_warn(app, "Failed to remove offload of replaced MAC addr on %s.\n",
          netdev_name(netdev));

  ether_addr_copy(off_mac, netdev->dev_addr);
  break;
 default:
  err = -EINVAL;
  goto err_put_non_repr_priv;
 }

 if (non_repr)
  __nfp_flower_non_repr_priv_put(nr_priv);

 return 0;

err_put_non_repr_priv:
 if (non_repr)
  __nfp_flower_non_repr_priv_put(nr_priv);

 return err;
}
