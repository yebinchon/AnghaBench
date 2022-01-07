
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_dev {scalar_t__ regview; scalar_t__ doorbells; scalar_t__ db_size; struct pci_dev* pdev; } ;
struct pci_dev {int enable_cnt; } ;


 int atomic_read (int *) ;
 int iounmap (scalar_t__) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;

__attribute__((used)) static void qed_free_pci(struct qed_dev *cdev)
{
 struct pci_dev *pdev = cdev->pdev;

 if (cdev->doorbells && cdev->db_size)
  iounmap(cdev->doorbells);
 if (cdev->regview)
  iounmap(cdev->regview);
 if (atomic_read(&pdev->enable_cnt) == 1)
  pci_release_regions(pdev);

 pci_disable_device(pdev);
}
