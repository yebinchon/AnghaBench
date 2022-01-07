
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_ptt {int dummy; } ;
struct qed_dev {int flags; int connections; } ;


 int DP_NOTICE (struct qed_dev*,char*) ;
 int EAGAIN ;
 int EINVAL ;
 int QED_AFFIN_HWFN (struct qed_dev*) ;
 int QED_FLAG_STORAGE_STARTED ;
 int QED_SPQ_MODE_EBLOCK ;
 int hash_empty (int ) ;
 struct qed_ptt* qed_ptt_acquire (int ) ;
 int qed_ptt_release (int ,struct qed_ptt*) ;
 int qed_sp_fcoe_func_stop (int ,struct qed_ptt*,int ,int *) ;

__attribute__((used)) static int qed_fcoe_stop(struct qed_dev *cdev)
{
 struct qed_ptt *p_ptt;
 int rc;

 if (!(cdev->flags & QED_FLAG_STORAGE_STARTED)) {
  DP_NOTICE(cdev, "fcoe already stopped\n");
  return 0;
 }

 if (!hash_empty(cdev->connections)) {
  DP_NOTICE(cdev,
     "Can't stop fcoe - not all connections were returned\n");
  return -EINVAL;
 }

 p_ptt = qed_ptt_acquire(QED_AFFIN_HWFN(cdev));
 if (!p_ptt)
  return -EAGAIN;


 rc = qed_sp_fcoe_func_stop(QED_AFFIN_HWFN(cdev), p_ptt,
       QED_SPQ_MODE_EBLOCK, ((void*)0));
 cdev->flags &= ~QED_FLAG_STORAGE_STARTED;
 qed_ptt_release(QED_AFFIN_HWFN(cdev), p_ptt);

 return rc;
}
