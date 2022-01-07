
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int slowpath_task; int slowpath_wq; int slowpath_task_flags; int cdev; } ;


 int DP_VERBOSE (int ,int ,char*,int ) ;
 int NETIF_MSG_DRV ;
 int QED_SLOWPATH_MFW_TLV_REQ ;
 int queue_delayed_work (int ,int *,int ) ;
 int set_bit (int ,int *) ;
 int smp_mb__after_atomic () ;
 int smp_mb__before_atomic () ;

int qed_mfw_tlv_req(struct qed_hwfn *hwfn)
{
 DP_VERBOSE(hwfn->cdev, NETIF_MSG_DRV,
     "Scheduling slowpath task [Flag: %d]\n",
     QED_SLOWPATH_MFW_TLV_REQ);
 smp_mb__before_atomic();
 set_bit(QED_SLOWPATH_MFW_TLV_REQ, &hwfn->slowpath_task_flags);
 smp_mb__after_atomic();
 queue_delayed_work(hwfn->slowpath_wq, &hwfn->slowpath_task, 0);

 return 0;
}
