
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ice_pf {int num_vfs_supported; int flags; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOTSUPP ;
 int ICE_FLAG_SRIOV_CAPABLE ;
 int ICE_FLAG_SRIOV_ENA ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,int) ;
 int ice_alloc_vfs (struct ice_pf*,int) ;
 int ice_free_vfs (struct ice_pf*) ;
 int ice_pf_state_is_nominal (struct ice_pf*) ;
 int pci_num_vf (TYPE_1__*) ;
 int set_bit (int ,int ) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static int ice_pci_sriov_ena(struct ice_pf *pf, int num_vfs)
{
 int pre_existing_vfs = pci_num_vf(pf->pdev);
 struct device *dev = &pf->pdev->dev;
 int err;

 if (!ice_pf_state_is_nominal(pf)) {
  dev_err(dev, "Cannot enable SR-IOV, device not ready\n");
  return -EBUSY;
 }

 if (!test_bit(ICE_FLAG_SRIOV_CAPABLE, pf->flags)) {
  dev_err(dev, "This device is not capable of SR-IOV\n");
  return -ENODEV;
 }

 if (pre_existing_vfs && pre_existing_vfs != num_vfs)
  ice_free_vfs(pf);
 else if (pre_existing_vfs && pre_existing_vfs == num_vfs)
  return num_vfs;

 if (num_vfs > pf->num_vfs_supported) {
  dev_err(dev, "Can't enable %d VFs, max VFs supported is %d\n",
   num_vfs, pf->num_vfs_supported);
  return -ENOTSUPP;
 }

 dev_info(dev, "Allocating %d VFs\n", num_vfs);
 err = ice_alloc_vfs(pf, num_vfs);
 if (err) {
  dev_err(dev, "Failed to enable SR-IOV: %d\n", err);
  return err;
 }

 set_bit(ICE_FLAG_SRIOV_ENA, pf->flags);
 return num_vfs;
}
