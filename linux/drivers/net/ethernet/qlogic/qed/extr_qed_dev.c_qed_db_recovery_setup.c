
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ db_recovery_counter; int lock; int list; } ;
struct qed_hwfn {TYPE_1__ db_recovery_info; TYPE_2__* cdev; } ;
struct TYPE_4__ {int db_size; } ;


 int DP_ERR (TYPE_2__*,char*) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*) ;
 int EINVAL ;
 int INIT_LIST_HEAD (int *) ;
 int QED_MSG_SPQ ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int qed_db_recovery_setup(struct qed_hwfn *p_hwfn)
{
 DP_VERBOSE(p_hwfn, QED_MSG_SPQ, "Setting up db recovery\n");


 if (!p_hwfn->cdev->db_size) {
  DP_ERR(p_hwfn->cdev, "db_size not set\n");
  return -EINVAL;
 }

 INIT_LIST_HEAD(&p_hwfn->db_recovery_info.list);
 spin_lock_init(&p_hwfn->db_recovery_info.lock);
 p_hwfn->db_recovery_info.db_recovery_counter = 0;

 return 0;
}
