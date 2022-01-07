
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_dev {int dummy; } ;


 int DP_VERBOSE (struct qed_dev*,int ,char*) ;
 int EOPNOTSUPP ;
 int IS_QED_SRIOV (struct qed_dev*) ;
 int QED_MSG_IOV ;
 int qed_sriov_disable (struct qed_dev*,int) ;
 int qed_sriov_enable (struct qed_dev*,int) ;

__attribute__((used)) static int qed_sriov_configure(struct qed_dev *cdev, int num_vfs_param)
{
 if (!IS_QED_SRIOV(cdev)) {
  DP_VERBOSE(cdev, QED_MSG_IOV, "SR-IOV is not supported\n");
  return -EOPNOTSUPP;
 }

 if (num_vfs_param)
  return qed_sriov_enable(cdev, num_vfs_param);
 else
  return qed_sriov_disable(cdev, 1);
}
