
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int int_mode; } ;
struct TYPE_3__ {int int_mode; int num_vectors; } ;
struct qed_int_params {TYPE_2__ out; TYPE_1__ in; int msix_table; } ;
struct qed_dev {int num_hwfns; int int_coalescing_mode; int pdev; struct qed_int_params int_params; } ;
struct msix_entry {int dummy; } ;


 int DP_INFO (struct qed_dev*,char*,char*) ;
 int DP_NOTICE (struct qed_dev*,char*,...) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int QED_COAL_MODE_ENABLE ;



 int kcalloc (int,int,int ) ;
 int kfree (int ) ;
 int pci_enable_msi (int ) ;
 int qed_enable_msix (struct qed_dev*,struct qed_int_params*) ;

__attribute__((used)) static int qed_set_int_mode(struct qed_dev *cdev, bool force_mode)
{
 struct qed_int_params *int_params = &cdev->int_params;
 struct msix_entry *tbl;
 int rc = 0, cnt;

 switch (int_params->in.int_mode) {
 case 128:

  cnt = int_params->in.num_vectors;
  int_params->msix_table = kcalloc(cnt, sizeof(*tbl), GFP_KERNEL);
  if (!int_params->msix_table) {
   rc = -ENOMEM;
   goto out;
  }


  rc = qed_enable_msix(cdev, int_params);
  if (!rc)
   goto out;

  DP_NOTICE(cdev, "Failed to enable MSI-X\n");
  kfree(int_params->msix_table);
  if (force_mode)
   goto out;


 case 129:
  if (cdev->num_hwfns == 1) {
   rc = pci_enable_msi(cdev->pdev);
   if (!rc) {
    int_params->out.int_mode = 129;
    goto out;
   }

   DP_NOTICE(cdev, "Failed to enable MSI\n");
   if (force_mode)
    goto out;
  }


 case 130:
   int_params->out.int_mode = 130;
   rc = 0;
   goto out;
 default:
  DP_NOTICE(cdev, "Unknown int_mode value %d\n",
     int_params->in.int_mode);
  rc = -EINVAL;
 }

out:
 if (!rc)
  DP_INFO(cdev, "Using %s interrupts\n",
   int_params->out.int_mode == 130 ?
   "INTa" : int_params->out.int_mode == 129 ?
   "MSI" : "MSIX");
 cdev->int_coalescing_mode = QED_COAL_MODE_ENABLE;

 return rc;
}
