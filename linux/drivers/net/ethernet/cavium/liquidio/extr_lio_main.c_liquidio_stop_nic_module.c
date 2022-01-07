
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct octeon_device {int ifcount; int num_oqs; TYPE_5__* pci_dev; int * devlink; TYPE_1__* props; int cmd_resp_wqlock; int cmd_resp_state; } ;
struct TYPE_9__ {TYPE_3__* rxpciq; } ;
struct lio {TYPE_4__ linfo; } ;
struct TYPE_10__ {int dev; } ;
struct TYPE_7__ {int q_no; } ;
struct TYPE_8__ {TYPE_2__ s; } ;
struct TYPE_6__ {int netdev; } ;


 struct lio* GET_LIO (int ) ;
 int OCT_DRV_OFFLINE ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int devlink_free (int *) ;
 int devlink_unregister (int *) ;
 int lio_vf_rep_destroy (struct octeon_device*) ;
 int liquidio_destroy_nic_device (struct octeon_device*,int) ;
 int octeon_unregister_droq_ops (struct octeon_device*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int liquidio_stop_nic_module(struct octeon_device *oct)
{
 int i, j;
 struct lio *lio;

 dev_dbg(&oct->pci_dev->dev, "Stopping network interfaces\n");
 if (!oct->ifcount) {
  dev_err(&oct->pci_dev->dev, "Init for Octeon was not completed\n");
  return 1;
 }

 spin_lock_bh(&oct->cmd_resp_wqlock);
 oct->cmd_resp_state = OCT_DRV_OFFLINE;
 spin_unlock_bh(&oct->cmd_resp_wqlock);

 lio_vf_rep_destroy(oct);

 for (i = 0; i < oct->ifcount; i++) {
  lio = GET_LIO(oct->props[i].netdev);
  for (j = 0; j < oct->num_oqs; j++)
   octeon_unregister_droq_ops(oct,
         lio->linfo.rxpciq[j].s.q_no);
 }

 for (i = 0; i < oct->ifcount; i++)
  liquidio_destroy_nic_device(oct, i);

 if (oct->devlink) {
  devlink_unregister(oct->devlink);
  devlink_free(oct->devlink);
  oct->devlink = ((void*)0);
 }

 dev_dbg(&oct->pci_dev->dev, "Network interfaces stopped\n");
 return 0;
}
