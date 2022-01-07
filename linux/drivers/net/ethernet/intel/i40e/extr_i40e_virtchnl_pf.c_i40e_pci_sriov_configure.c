
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct i40e_pf {int flags; int state; int pdev; } ;


 int EAGAIN ;
 int EINVAL ;
 int I40E_FLAG_VEB_MODE_ENABLED ;
 int I40E_PF_RESET_FLAG ;
 int __I40E_VIRTCHNL_OP_PENDING ;
 int clear_bit (int ,int ) ;
 int dev_warn (int *,char*) ;
 int i40e_do_reset_safe (struct i40e_pf*,int ) ;
 int i40e_free_vfs (struct i40e_pf*) ;
 int i40e_pci_sriov_enable (struct pci_dev*,int) ;
 struct i40e_pf* pci_get_drvdata (struct pci_dev*) ;
 int pci_vfs_assigned (int ) ;
 scalar_t__ test_and_set_bit (int ,int ) ;

int i40e_pci_sriov_configure(struct pci_dev *pdev, int num_vfs)
{
 struct i40e_pf *pf = pci_get_drvdata(pdev);
 int ret = 0;

 if (test_and_set_bit(__I40E_VIRTCHNL_OP_PENDING, pf->state)) {
  dev_warn(&pdev->dev, "Unable to configure VFs, other operation is pending.\n");
  return -EAGAIN;
 }

 if (num_vfs) {
  if (!(pf->flags & I40E_FLAG_VEB_MODE_ENABLED)) {
   pf->flags |= I40E_FLAG_VEB_MODE_ENABLED;
   i40e_do_reset_safe(pf, I40E_PF_RESET_FLAG);
  }
  ret = i40e_pci_sriov_enable(pdev, num_vfs);
  goto sriov_configure_out;
 }

 if (!pci_vfs_assigned(pf->pdev)) {
  i40e_free_vfs(pf);
  pf->flags &= ~I40E_FLAG_VEB_MODE_ENABLED;
  i40e_do_reset_safe(pf, I40E_PF_RESET_FLAG);
 } else {
  dev_warn(&pdev->dev, "Unable to free VFs because some are assigned to VMs.\n");
  ret = -EINVAL;
  goto sriov_configure_out;
 }
sriov_configure_out:
 clear_bit(__I40E_VIRTCHNL_OP_PENDING, pf->state);
 return ret;
}
