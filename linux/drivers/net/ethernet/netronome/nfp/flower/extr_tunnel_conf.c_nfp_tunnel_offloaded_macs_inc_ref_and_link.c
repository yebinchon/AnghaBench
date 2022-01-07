
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_tun_offloaded_mac {int ref_count; int bridge_count; int repr_list; } ;
struct nfp_repr {struct nfp_flower_repr_priv* app_priv; } ;
struct nfp_flower_repr_priv {int mac_list; } ;
struct net_device {int dummy; } ;


 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 struct nfp_repr* netdev_priv (struct net_device*) ;
 scalar_t__ nfp_flower_is_supported_bridge (struct net_device*) ;
 scalar_t__ nfp_netdev_is_nfp_repr (struct net_device*) ;

__attribute__((used)) static void
nfp_tunnel_offloaded_macs_inc_ref_and_link(struct nfp_tun_offloaded_mac *entry,
        struct net_device *netdev, bool mod)
{
 if (nfp_netdev_is_nfp_repr(netdev)) {
  struct nfp_flower_repr_priv *repr_priv;
  struct nfp_repr *repr;

  repr = netdev_priv(netdev);
  repr_priv = repr->app_priv;


  if (mod)
   list_del(&repr_priv->mac_list);

  list_add_tail(&repr_priv->mac_list, &entry->repr_list);
 } else if (nfp_flower_is_supported_bridge(netdev)) {
  entry->bridge_count++;
 }

 entry->ref_count++;
}
