
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qed_int_param {int dummy; } ;
struct TYPE_4__ {scalar_t__ int_mode; } ;
struct TYPE_3__ {TYPE_2__ out; int msix_table; } ;
struct qed_dev {TYPE_1__ int_params; int pdev; } ;


 scalar_t__ QED_INT_MODE_MSI ;
 scalar_t__ QED_INT_MODE_MSIX ;
 int kfree (int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int pci_disable_msi (int ) ;
 int pci_disable_msix (int ) ;

__attribute__((used)) static void qed_disable_msix(struct qed_dev *cdev)
{
 if (cdev->int_params.out.int_mode == QED_INT_MODE_MSIX) {
  pci_disable_msix(cdev->pdev);
  kfree(cdev->int_params.msix_table);
 } else if (cdev->int_params.out.int_mode == QED_INT_MODE_MSI) {
  pci_disable_msi(cdev->pdev);
 }

 memset(&cdev->int_params.out, 0, sizeof(struct qed_int_param));
}
