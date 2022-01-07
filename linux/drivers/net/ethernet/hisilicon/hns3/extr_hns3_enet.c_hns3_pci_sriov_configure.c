
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int CONFIG_PCI_IOV ;
 int EINVAL ;
 scalar_t__ IS_ENABLED (int ) ;
 int dev_err (int *,char*,int) ;
 int dev_warn (int *,char*) ;
 scalar_t__ hns3_is_phys_func (struct pci_dev*) ;
 int pci_disable_sriov (struct pci_dev*) ;
 int pci_enable_sriov (struct pci_dev*,int) ;
 int pci_vfs_assigned (struct pci_dev*) ;

__attribute__((used)) static int hns3_pci_sriov_configure(struct pci_dev *pdev, int num_vfs)
{
 int ret;

 if (!(hns3_is_phys_func(pdev) && IS_ENABLED(CONFIG_PCI_IOV))) {
  dev_warn(&pdev->dev, "Can not config SRIOV\n");
  return -EINVAL;
 }

 if (num_vfs) {
  ret = pci_enable_sriov(pdev, num_vfs);
  if (ret)
   dev_err(&pdev->dev, "SRIOV enable failed %d\n", ret);
  else
   return num_vfs;
 } else if (!pci_vfs_assigned(pdev)) {
  pci_disable_sriov(pdev);
 } else {
  dev_warn(&pdev->dev,
    "Unable to free VFs because some are assigned to VMs.\n");
 }

 return 0;
}
