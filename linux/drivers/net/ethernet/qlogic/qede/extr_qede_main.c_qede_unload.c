
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int num_hwfns; } ;
struct TYPE_6__ {TYPE_1__ common; } ;
struct qede_dev {scalar_t__ ptp_skip_txts; int cdev; TYPE_4__* ops; TYPE_2__ dev_info; int ndev; int state; int flags; } ;
struct qed_link_params {int link_up; } ;
typedef int link_params ;
typedef enum qede_unload_mode { ____Placeholder_qede_unload_mode } qede_unload_mode ;
struct TYPE_8__ {TYPE_3__* common; int (* fastpath_stop ) (int ) ;} ;
struct TYPE_7__ {int (* set_fp_int ) (int ,int ) ;int (* set_link ) (int ,struct qed_link_params*) ;} ;


 int DP_INFO (struct qede_dev*,char*) ;
 int DP_NOTICE (struct qede_dev*,char*) ;
 int IS_VF (struct qede_dev*) ;
 int QEDE_FLAGS_LINK_REQUESTED ;
 int QEDE_STATE_CLOSED ;
 int QEDE_UNLOAD_RECOVERY ;
 int __qede_lock (struct qede_dev*) ;
 int __qede_unlock (struct qede_dev*) ;
 int clear_bit (int ,int *) ;
 int memset (struct qed_link_params*,int ,int) ;
 int netif_carrier_off (int ) ;
 int netif_tx_disable (int ) ;
 int qede_empty_tx_queues (struct qede_dev*) ;
 int qede_free_arfs (struct qede_dev*) ;
 int qede_free_fp_array (struct qede_dev*) ;
 int qede_free_mem_load (struct qede_dev*) ;
 int qede_napi_disable_remove (struct qede_dev*) ;
 int qede_poll_for_freeing_arfs_filters (struct qede_dev*) ;
 int qede_rdma_dev_event_close (struct qede_dev*) ;
 int qede_stop_queues (struct qede_dev*) ;
 int qede_sync_free_irqs (struct qede_dev*) ;
 int qede_vlan_mark_nonconfigured (struct qede_dev*) ;
 int stub1 (int ,struct qed_link_params*) ;
 int stub2 (int ) ;
 int stub3 (int ,int ) ;

__attribute__((used)) static void qede_unload(struct qede_dev *edev, enum qede_unload_mode mode,
   bool is_locked)
{
 struct qed_link_params link_params;
 int rc;

 DP_INFO(edev, "Starting qede unload\n");

 if (!is_locked)
  __qede_lock(edev);

 clear_bit(QEDE_FLAGS_LINK_REQUESTED, &edev->flags);

 if (mode != QEDE_UNLOAD_RECOVERY)
  edev->state = QEDE_STATE_CLOSED;

 qede_rdma_dev_event_close(edev);


 netif_tx_disable(edev->ndev);
 netif_carrier_off(edev->ndev);

 if (mode != QEDE_UNLOAD_RECOVERY) {

  memset(&link_params, 0, sizeof(link_params));
  link_params.link_up = 0;
  edev->ops->common->set_link(edev->cdev, &link_params);

  rc = qede_stop_queues(edev);
  if (rc) {
   qede_sync_free_irqs(edev);
   goto out;
  }

  DP_INFO(edev, "Stopped Queues\n");
 }

 qede_vlan_mark_nonconfigured(edev);
 edev->ops->fastpath_stop(edev->cdev);

 if (!IS_VF(edev) && edev->dev_info.common.num_hwfns == 1) {
  qede_poll_for_freeing_arfs_filters(edev);
  qede_free_arfs(edev);
 }


 qede_sync_free_irqs(edev);
 edev->ops->common->set_fp_int(edev->cdev, 0);

 qede_napi_disable_remove(edev);

 if (mode == QEDE_UNLOAD_RECOVERY)
  qede_empty_tx_queues(edev);

 qede_free_mem_load(edev);
 qede_free_fp_array(edev);

out:
 if (!is_locked)
  __qede_unlock(edev);

 if (mode != QEDE_UNLOAD_RECOVERY)
  DP_NOTICE(edev, "Link is down\n");

 edev->ptp_skip_txts = 0;

 DP_INFO(edev, "Ending qede unload\n");
}
