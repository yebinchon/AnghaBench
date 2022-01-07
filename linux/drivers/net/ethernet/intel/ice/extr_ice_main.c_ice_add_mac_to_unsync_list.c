
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct ice_vsi {int tmp_unsync_list; } ;
struct ice_netdev_priv {struct ice_vsi* vsi; } ;


 int EINVAL ;
 scalar_t__ ice_add_mac_to_list (struct ice_vsi*,int *,int const*) ;
 struct ice_netdev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ice_add_mac_to_unsync_list(struct net_device *netdev, const u8 *addr)
{
 struct ice_netdev_priv *np = netdev_priv(netdev);
 struct ice_vsi *vsi = np->vsi;

 if (ice_add_mac_to_list(vsi, &vsi->tmp_unsync_list, addr))
  return -EINVAL;

 return 0;
}
