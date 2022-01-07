
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int slowpath_task_flags; int periodic_db_rec_count; } ;


 int QED_PERIODIC_DB_REC_COUNT ;
 int QED_PERIODIC_DB_REC_INTERVAL ;
 int QED_SLOWPATH_PERIODIC_DB_REC ;
 int qed_slowpath_delayed_work (struct qed_hwfn*,int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;

void qed_periodic_db_rec_start(struct qed_hwfn *p_hwfn)
{

 p_hwfn->periodic_db_rec_count = QED_PERIODIC_DB_REC_COUNT;


 if (test_bit(QED_SLOWPATH_PERIODIC_DB_REC,
       &p_hwfn->slowpath_task_flags))
  return;

 qed_slowpath_delayed_work(p_hwfn, QED_SLOWPATH_PERIODIC_DB_REC,
      QED_PERIODIC_DB_REC_INTERVAL);
}
