
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct i40e_vsi {scalar_t__ current_netdev_flags; TYPE_2__* back; int flags; TYPE_1__* netdev; int mac_filter_hash_lock; } ;
struct i40e_netdev_priv {struct i40e_vsi* vsi; } ;
struct TYPE_4__ {int state; } ;
struct TYPE_3__ {scalar_t__ flags; } ;


 int I40E_VSI_FLAG_FILTER_CHANGED ;
 int __I40E_MACVLAN_SYNC_PENDING ;
 int __dev_mc_sync (struct net_device*,int ,int ) ;
 int __dev_uc_sync (struct net_device*,int ,int ) ;
 int i40e_addr_sync ;
 int i40e_addr_unsync ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;
 int set_bit (int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void i40e_set_rx_mode(struct net_device *netdev)
{
 struct i40e_netdev_priv *np = netdev_priv(netdev);
 struct i40e_vsi *vsi = np->vsi;

 spin_lock_bh(&vsi->mac_filter_hash_lock);

 __dev_uc_sync(netdev, i40e_addr_sync, i40e_addr_unsync);
 __dev_mc_sync(netdev, i40e_addr_sync, i40e_addr_unsync);

 spin_unlock_bh(&vsi->mac_filter_hash_lock);


 if (vsi->current_netdev_flags != vsi->netdev->flags) {
  vsi->flags |= I40E_VSI_FLAG_FILTER_CHANGED;
  set_bit(__I40E_MACVLAN_SYNC_PENDING, vsi->back->state);
 }
}
