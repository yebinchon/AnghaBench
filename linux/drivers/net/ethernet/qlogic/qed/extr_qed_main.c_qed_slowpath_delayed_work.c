
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int slowpath_task; int slowpath_wq; int slowpath_task_flags; int slowpath_wq_active; } ;
typedef enum qed_slowpath_wq_flag { ____Placeholder_qed_slowpath_wq_flag } qed_slowpath_wq_flag ;


 int EINVAL ;
 int queue_delayed_work (int ,int *,unsigned long) ;
 int set_bit (int,int *) ;
 int smp_mb__after_atomic () ;
 int smp_mb__before_atomic () ;

__attribute__((used)) static int qed_slowpath_delayed_work(struct qed_hwfn *hwfn,
         enum qed_slowpath_wq_flag wq_flag,
         unsigned long delay)
{
 if (!hwfn->slowpath_wq_active)
  return -EINVAL;


 smp_mb__before_atomic();
 set_bit(wq_flag, &hwfn->slowpath_task_flags);
 smp_mb__after_atomic();
 queue_delayed_work(hwfn->slowpath_wq, &hwfn->slowpath_task, delay);

 return 0;
}
