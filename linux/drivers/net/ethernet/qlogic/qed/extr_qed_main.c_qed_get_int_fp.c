
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qed_int_info {int * msix; int msix_cnt; } ;
struct TYPE_3__ {scalar_t__ int_mode; } ;
struct TYPE_4__ {int fp_msix_base; int * msix_table; int fp_msix_cnt; TYPE_1__ out; int fp_initialized; } ;
struct qed_dev {TYPE_2__ int_params; } ;


 int DP_INFO (struct qed_dev*,char*) ;
 int EINVAL ;
 scalar_t__ QED_INT_MODE_MSIX ;
 int memset (struct qed_int_info*,int ,int) ;

__attribute__((used)) static int qed_get_int_fp(struct qed_dev *cdev, struct qed_int_info *info)
{
 memset(info, 0, sizeof(struct qed_int_info));

 if (!cdev->int_params.fp_initialized) {
  DP_INFO(cdev,
   "Protocol driver requested interrupt information, but its support is not yet configured\n");
  return -EINVAL;
 }




 if (cdev->int_params.out.int_mode == QED_INT_MODE_MSIX) {
  int msix_base = cdev->int_params.fp_msix_base;

  info->msix_cnt = cdev->int_params.fp_msix_cnt;
  info->msix = &cdev->int_params.msix_table[msix_base];
 }

 return 0;
}
