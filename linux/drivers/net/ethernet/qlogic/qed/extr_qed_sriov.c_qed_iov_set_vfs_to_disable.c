
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct qed_dev {TYPE_1__* p_iov_info; } ;
struct TYPE_2__ {scalar_t__ total_vfs; } ;


 int IS_QED_SRIOV (struct qed_dev*) ;
 int qed_iov_set_vf_to_disable (struct qed_dev*,scalar_t__,int ) ;

__attribute__((used)) static void qed_iov_set_vfs_to_disable(struct qed_dev *cdev, u8 to_disable)
{
 u16 i;

 if (!IS_QED_SRIOV(cdev))
  return;

 for (i = 0; i < cdev->p_iov_info->total_vfs; i++)
  qed_iov_set_vf_to_disable(cdev, i, to_disable);
}
