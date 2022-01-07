
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int num_vfs; struct net_device** ndev; } ;
struct TYPE_6__ {int sriov_enabled; } ;
struct octeon_device {scalar_t__ eswitch_mode; TYPE_2__ vf_rep_list; TYPE_3__ sriov_info; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int work; } ;
struct lio_vf_rep_desc {TYPE_1__ stats_wk; } ;


 scalar_t__ DEVLINK_ESWITCH_MODE_SWITCHDEV ;
 int cancel_delayed_work_sync (int *) ;
 int free_netdev (struct net_device*) ;
 struct lio_vf_rep_desc* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_tx_disable (struct net_device*) ;
 int unregister_netdev (struct net_device*) ;

void
lio_vf_rep_destroy(struct octeon_device *oct)
{
 struct lio_vf_rep_desc *vf_rep;
 struct net_device *ndev;
 int i;

 if (oct->eswitch_mode != DEVLINK_ESWITCH_MODE_SWITCHDEV)
  return;

 if (!oct->sriov_info.sriov_enabled)
  return;

 for (i = 0; i < oct->vf_rep_list.num_vfs; i++) {
  ndev = oct->vf_rep_list.ndev[i];
  oct->vf_rep_list.ndev[i] = ((void*)0);
  if (ndev) {
   vf_rep = netdev_priv(ndev);
   cancel_delayed_work_sync
    (&vf_rep->stats_wk.work);
   netif_tx_disable(ndev);
   netif_carrier_off(ndev);

   unregister_netdev(ndev);
   free_netdev(ndev);
  }
 }

 oct->vf_rep_list.num_vfs = 0;
}
