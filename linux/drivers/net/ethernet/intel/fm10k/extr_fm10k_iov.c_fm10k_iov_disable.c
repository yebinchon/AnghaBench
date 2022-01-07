
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int dev_err (int *,char*) ;
 int fm10k_iov_free_data (struct pci_dev*) ;
 int pci_disable_sriov (struct pci_dev*) ;
 scalar_t__ pci_num_vf (struct pci_dev*) ;
 scalar_t__ pci_vfs_assigned (struct pci_dev*) ;

void fm10k_iov_disable(struct pci_dev *pdev)
{
 if (pci_num_vf(pdev) && pci_vfs_assigned(pdev))
  dev_err(&pdev->dev,
   "Cannot disable SR-IOV while VFs are assigned\n");
 else
  pci_disable_sriov(pdev);

 fm10k_iov_free_data(pdev);
}
