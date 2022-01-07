
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct ice_pf {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int EOPNOTSUPP ;
 int dev_err (int *,char*) ;
 int ice_free_vfs (struct ice_pf*) ;
 scalar_t__ ice_is_safe_mode (struct ice_pf*) ;
 int ice_pci_sriov_ena (struct ice_pf*,int) ;
 struct ice_pf* pci_get_drvdata (struct pci_dev*) ;
 int pci_vfs_assigned (struct pci_dev*) ;

int ice_sriov_configure(struct pci_dev *pdev, int num_vfs)
{
 struct ice_pf *pf = pci_get_drvdata(pdev);

 if (ice_is_safe_mode(pf)) {
  dev_err(&pf->pdev->dev,
   "SR-IOV cannot be configured - Device is in Safe Mode\n");
  return -EOPNOTSUPP;
 }

 if (num_vfs)
  return ice_pci_sriov_ena(pf, num_vfs);

 if (!pci_vfs_assigned(pdev)) {
  ice_free_vfs(pf);
 } else {
  dev_err(&pf->pdev->dev,
   "can't free VFs because some are assigned to VMs.\n");
  return -EBUSY;
 }

 return 0;
}
