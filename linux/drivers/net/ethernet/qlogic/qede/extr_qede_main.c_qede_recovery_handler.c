
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct qede_dev {scalar_t__ state; int ndev; int * cdev; int dp_level; int dp_module; int pdev; TYPE_2__* ops; } ;
struct TYPE_4__ {TYPE_1__* common; } ;
struct TYPE_3__ {int (* recovery_prolog ) (int *) ;} ;


 int DP_NOTICE (struct qede_dev*,char*) ;
 int IS_VF (struct qede_dev*) ;
 int QEDE_LOAD_RECOVERY ;
 int QEDE_PROBE_RECOVERY ;
 int QEDE_REMOVE_RECOVERY ;
 scalar_t__ QEDE_STATE_OPEN ;
 scalar_t__ QEDE_STATE_RECOVERY ;
 int QEDE_UNLOAD_RECOVERY ;
 int __qede_probe (int ,int ,int ,int ,int ) ;
 int __qede_remove (int ,int ) ;
 int qede_config_rx_mode (int ) ;
 int qede_load (struct qede_dev*,int ,int) ;
 int qede_recovery_failed (struct qede_dev*) ;
 int qede_unload (struct qede_dev*,int ,int) ;
 int stub1 (int *) ;
 int udp_tunnel_get_rx_info (int ) ;

__attribute__((used)) static void qede_recovery_handler(struct qede_dev *edev)
{
 u32 curr_state = edev->state;
 int rc;

 DP_NOTICE(edev, "Starting a recovery process\n");




 edev->state = QEDE_STATE_RECOVERY;

 edev->ops->common->recovery_prolog(edev->cdev);

 if (curr_state == QEDE_STATE_OPEN)
  qede_unload(edev, QEDE_UNLOAD_RECOVERY, 1);

 __qede_remove(edev->pdev, QEDE_REMOVE_RECOVERY);

 rc = __qede_probe(edev->pdev, edev->dp_module, edev->dp_level,
     IS_VF(edev), QEDE_PROBE_RECOVERY);
 if (rc) {
  edev->cdev = ((void*)0);
  goto err;
 }

 if (curr_state == QEDE_STATE_OPEN) {
  rc = qede_load(edev, QEDE_LOAD_RECOVERY, 1);
  if (rc)
   goto err;

  qede_config_rx_mode(edev->ndev);
  udp_tunnel_get_rx_info(edev->ndev);
 }

 edev->state = curr_state;

 DP_NOTICE(edev, "Recovery handling is done\n");

 return;

err:
 qede_recovery_failed(edev);
}
