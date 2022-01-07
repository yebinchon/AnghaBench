
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct qed_dev {int num_hwfns; int firmware; } ;
struct TYPE_3__ {int p_arfs_ptt; } ;


 int ENODEV ;
 scalar_t__ IS_PF (struct qed_dev*) ;
 scalar_t__ IS_QED_ETH_IF (struct qed_dev*) ;
 TYPE_1__* QED_LEADING_HWFN (struct qed_dev*) ;
 int qed_disable_msix (struct qed_dev*) ;
 int qed_free_stream_mem (struct qed_dev*) ;
 int qed_iov_wq_stop (struct qed_dev*,int) ;
 int qed_ll2_dealloc_if (struct qed_dev*) ;
 int qed_nic_stop (struct qed_dev*) ;
 int qed_ptt_release (TYPE_1__*,int ) ;
 int qed_resc_free (struct qed_dev*) ;
 int qed_slowpath_irq_free (struct qed_dev*) ;
 int qed_slowpath_wq_stop (struct qed_dev*) ;
 int qed_sriov_disable (struct qed_dev*,int) ;
 int release_firmware (int ) ;

__attribute__((used)) static int qed_slowpath_stop(struct qed_dev *cdev)
{
 if (!cdev)
  return -ENODEV;

 qed_slowpath_wq_stop(cdev);

 qed_ll2_dealloc_if(cdev);

 if (IS_PF(cdev)) {
  if (cdev->num_hwfns == 1)
   qed_ptt_release(QED_LEADING_HWFN(cdev),
     QED_LEADING_HWFN(cdev)->p_arfs_ptt);
  qed_free_stream_mem(cdev);
  if (IS_QED_ETH_IF(cdev))
   qed_sriov_disable(cdev, 1);
 }

 qed_nic_stop(cdev);

 if (IS_PF(cdev))
  qed_slowpath_irq_free(cdev);

 qed_disable_msix(cdev);

 qed_resc_free(cdev);

 qed_iov_wq_stop(cdev, 1);

 if (IS_PF(cdev))
  release_firmware(cdev->firmware);

 return 0;
}
