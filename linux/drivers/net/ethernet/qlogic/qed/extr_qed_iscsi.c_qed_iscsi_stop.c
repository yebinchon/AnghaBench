
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_dev {int flags; int connections; } ;


 int DP_NOTICE (struct qed_dev*,char*) ;
 int EINVAL ;
 int QED_AFFIN_HWFN (struct qed_dev*) ;
 int QED_FLAG_STORAGE_STARTED ;
 int QED_SPQ_MODE_EBLOCK ;
 int hash_empty (int ) ;
 int qed_sp_iscsi_func_stop (int ,int ,int *) ;

__attribute__((used)) static int qed_iscsi_stop(struct qed_dev *cdev)
{
 int rc;

 if (!(cdev->flags & QED_FLAG_STORAGE_STARTED)) {
  DP_NOTICE(cdev, "iscsi already stopped\n");
  return 0;
 }

 if (!hash_empty(cdev->connections)) {
  DP_NOTICE(cdev,
     "Can't stop iscsi - not all connections were returned\n");
  return -EINVAL;
 }


 rc = qed_sp_iscsi_func_stop(QED_AFFIN_HWFN(cdev), QED_SPQ_MODE_EBLOCK,
        ((void*)0));
 cdev->flags &= ~QED_FLAG_STORAGE_STARTED;

 return rc;
}
