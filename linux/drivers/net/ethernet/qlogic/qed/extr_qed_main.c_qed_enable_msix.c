
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int num_vectors; int int_mode; } ;
struct TYPE_5__ {int num_vectors; int min_msix_cnt; } ;
struct qed_int_params {TYPE_2__ out; TYPE_3__* msix_table; TYPE_1__ in; } ;
struct qed_dev {int num_hwfns; int pdev; } ;
struct TYPE_7__ {int entry; } ;


 int DP_NOTICE (struct qed_dev*,char*,int,int) ;
 int QED_INT_MODE_MSIX ;
 int pci_disable_msix (int ) ;
 int pci_enable_msix_exact (int ,TYPE_3__*,int) ;
 int pci_enable_msix_range (int ,TYPE_3__*,int,int) ;

__attribute__((used)) static int qed_enable_msix(struct qed_dev *cdev,
      struct qed_int_params *int_params)
{
 int i, rc, cnt;

 cnt = int_params->in.num_vectors;

 for (i = 0; i < cnt; i++)
  int_params->msix_table[i].entry = i;

 rc = pci_enable_msix_range(cdev->pdev, int_params->msix_table,
       int_params->in.min_msix_cnt, cnt);
 if (rc < cnt && rc >= int_params->in.min_msix_cnt &&
     (rc % cdev->num_hwfns)) {
  pci_disable_msix(cdev->pdev);





  cnt = (rc / cdev->num_hwfns) * cdev->num_hwfns;
  DP_NOTICE(cdev,
     "Trying to enable MSI-X with less vectors (%d out of %d)\n",
     cnt, int_params->in.num_vectors);
  rc = pci_enable_msix_exact(cdev->pdev, int_params->msix_table,
        cnt);
  if (!rc)
   rc = cnt;
 }

 if (rc > 0) {

  int_params->out.int_mode = QED_INT_MODE_MSIX;
  int_params->out.num_vectors = rc;
  rc = 0;
 } else {
  DP_NOTICE(cdev,
     "Failed to enable MSI-X [Requested %d vectors][rc %d]\n",
     cnt, rc);
 }

 return rc;
}
