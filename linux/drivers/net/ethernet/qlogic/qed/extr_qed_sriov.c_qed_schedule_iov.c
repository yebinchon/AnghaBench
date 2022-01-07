
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int iov_task; int iov_wq; int iov_task_flags; } ;
typedef enum qed_iov_wq_flag { ____Placeholder_qed_iov_wq_flag } qed_iov_wq_flag ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int) ;
 int QED_MSG_IOV ;
 int queue_delayed_work (int ,int *,int ) ;
 int set_bit (int,int *) ;
 int smp_mb__after_atomic () ;
 int smp_mb__before_atomic () ;

void qed_schedule_iov(struct qed_hwfn *hwfn, enum qed_iov_wq_flag flag)
{
 smp_mb__before_atomic();
 set_bit(flag, &hwfn->iov_task_flags);
 smp_mb__after_atomic();
 DP_VERBOSE(hwfn, QED_MSG_IOV, "Scheduling iov task [Flag: %d]\n", flag);
 queue_delayed_work(hwfn->iov_wq, &hwfn->iov_task, 0);
}
