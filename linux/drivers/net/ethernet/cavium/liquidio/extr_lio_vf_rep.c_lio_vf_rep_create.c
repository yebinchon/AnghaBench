
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int num_vfs; struct net_device** ndev; } ;
struct TYPE_6__ {int num_vfs_alloced; int sriov_enabled; } ;
struct octeon_device {scalar_t__ eswitch_mode; int pf_num; TYPE_5__ vf_rep_list; TYPE_3__* pci_dev; TYPE_2__* props; TYPE_1__ sriov_info; } ;
struct net_device {int * netdev_ops; int max_mtu; int min_mtu; } ;
struct TYPE_9__ {int work; void* ctxptr; } ;
struct lio_vf_rep_desc {int ifidx; TYPE_4__ stats_wk; int parent_ndev; struct octeon_device* oct; struct net_device* ndev; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_7__ {int netdev; } ;


 scalar_t__ DEVLINK_ESWITCH_MODE_SWITCHDEV ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int LIO_MAX_MTU_SIZE ;
 int LIO_MIN_MTU_SIZE ;
 int LIO_VF_REP_STATS_POLL_TIME_MS ;
 int OPCODE_NIC ;
 int OPCODE_NIC_VF_REP_PKT ;
 struct net_device* alloc_etherdev (int) ;
 int cancel_delayed_work_sync (int *) ;
 int dev_err (int *,char*,...) ;
 int eth_hw_addr_random (struct net_device*) ;
 int free_netdev (struct net_device*) ;
 int lio_vf_rep_fetch_stats ;
 int lio_vf_rep_ndev_ops ;
 int lio_vf_rep_pkt_recv ;
 int memset (struct lio_vf_rep_desc*,int ,int) ;
 int msecs_to_jiffies (int ) ;
 struct lio_vf_rep_desc* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 scalar_t__ octeon_register_dispatch_fn (struct octeon_device*,int ,int ,int ,struct octeon_device*) ;
 scalar_t__ register_netdev (struct net_device*) ;
 int schedule_delayed_work (int *,int ) ;
 int unregister_netdev (struct net_device*) ;

int
lio_vf_rep_create(struct octeon_device *oct)
{
 struct lio_vf_rep_desc *vf_rep;
 struct net_device *ndev;
 int i, num_vfs;

 if (oct->eswitch_mode != DEVLINK_ESWITCH_MODE_SWITCHDEV)
  return 0;

 if (!oct->sriov_info.sriov_enabled)
  return 0;

 num_vfs = oct->sriov_info.num_vfs_alloced;

 oct->vf_rep_list.num_vfs = 0;
 for (i = 0; i < num_vfs; i++) {
  ndev = alloc_etherdev(sizeof(struct lio_vf_rep_desc));

  if (!ndev) {
   dev_err(&oct->pci_dev->dev,
    "VF rep device %d creation failed\n", i);
   goto cleanup;
  }

  ndev->min_mtu = LIO_MIN_MTU_SIZE;
  ndev->max_mtu = LIO_MAX_MTU_SIZE;
  ndev->netdev_ops = &lio_vf_rep_ndev_ops;

  vf_rep = netdev_priv(ndev);
  memset(vf_rep, 0, sizeof(*vf_rep));

  vf_rep->ndev = ndev;
  vf_rep->oct = oct;
  vf_rep->parent_ndev = oct->props[0].netdev;
  vf_rep->ifidx = (oct->pf_num * 64) + i + 1;

  eth_hw_addr_random(ndev);

  if (register_netdev(ndev)) {
   dev_err(&oct->pci_dev->dev, "VF rep nerdev registration failed\n");

   free_netdev(ndev);
   goto cleanup;
  }

  netif_carrier_off(ndev);

  INIT_DELAYED_WORK(&vf_rep->stats_wk.work,
      lio_vf_rep_fetch_stats);
  vf_rep->stats_wk.ctxptr = (void *)vf_rep;
  schedule_delayed_work(&vf_rep->stats_wk.work,
          msecs_to_jiffies
          (LIO_VF_REP_STATS_POLL_TIME_MS));
  oct->vf_rep_list.num_vfs++;
  oct->vf_rep_list.ndev[i] = ndev;
 }

 if (octeon_register_dispatch_fn(oct, OPCODE_NIC,
     OPCODE_NIC_VF_REP_PKT,
     lio_vf_rep_pkt_recv, oct)) {
  dev_err(&oct->pci_dev->dev, "VF rep Dispatch func registration failed\n");

  goto cleanup;
 }

 return 0;

cleanup:
 for (i = 0; i < oct->vf_rep_list.num_vfs; i++) {
  ndev = oct->vf_rep_list.ndev[i];
  oct->vf_rep_list.ndev[i] = ((void*)0);
  if (ndev) {
   vf_rep = netdev_priv(ndev);
   cancel_delayed_work_sync
    (&vf_rep->stats_wk.work);
   unregister_netdev(ndev);
   free_netdev(ndev);
  }
 }

 oct->vf_rep_list.num_vfs = 0;

 return -1;
}
