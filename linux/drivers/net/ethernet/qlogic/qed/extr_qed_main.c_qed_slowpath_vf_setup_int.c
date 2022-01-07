
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct qed_int_params {int dummy; } ;
struct TYPE_5__ {int num_vectors; } ;
struct TYPE_4__ {int min_msix_cnt; scalar_t__ num_vectors; int int_mode; } ;
struct TYPE_6__ {TYPE_2__ out; int fp_msix_cnt; scalar_t__ fp_msix_base; TYPE_1__ in; } ;
struct qed_dev {int num_hwfns; TYPE_3__ int_params; int * hwfns; } ;


 int QED_INT_MODE_MSIX ;
 int * QED_LEADING_HWFN (struct qed_dev*) ;
 int memset (TYPE_3__*,int ,int) ;
 int qed_set_int_mode (struct qed_dev*,int) ;
 int qed_vf_get_num_rxqs (int *,scalar_t__*) ;

__attribute__((used)) static int qed_slowpath_vf_setup_int(struct qed_dev *cdev)
{
 int rc;

 memset(&cdev->int_params, 0, sizeof(struct qed_int_params));
 cdev->int_params.in.int_mode = QED_INT_MODE_MSIX;

 qed_vf_get_num_rxqs(QED_LEADING_HWFN(cdev),
       &cdev->int_params.in.num_vectors);
 if (cdev->num_hwfns > 1) {
  u8 vectors = 0;

  qed_vf_get_num_rxqs(&cdev->hwfns[1], &vectors);
  cdev->int_params.in.num_vectors += vectors;
 }


 cdev->int_params.in.min_msix_cnt = cdev->num_hwfns;

 rc = qed_set_int_mode(cdev, 1);
 if (rc)
  return rc;

 cdev->int_params.fp_msix_base = 0;
 cdev->int_params.fp_msix_cnt = cdev->int_params.out.num_vectors;

 return 0;
}
