
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct be_resources {int member_0; } ;
struct be_adapter {int num_vfs; int pool_res; } ;


 int EBUSY ;
 int be_calculate_vf_res (struct be_adapter*,int,struct be_resources*) ;
 int be_cmd_set_sriov_config (struct be_adapter*,int ,int,struct be_resources*) ;
 int be_cmd_status (int) ;
 int be_get_resources (struct be_adapter*) ;
 int be_update_queues (struct be_adapter*) ;
 int be_vf_clear (struct be_adapter*) ;
 int be_vf_setup (struct be_adapter*) ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*) ;
 struct be_adapter* pci_get_drvdata (struct pci_dev*) ;
 int pci_num_vf (struct pci_dev*) ;
 scalar_t__ pci_vfs_assigned (struct pci_dev*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 scalar_t__ skyhawk_chip (struct be_adapter*) ;

__attribute__((used)) static int be_pci_sriov_configure(struct pci_dev *pdev, int num_vfs)
{
 struct be_adapter *adapter = pci_get_drvdata(pdev);
 struct be_resources vft_res = {0};
 int status;

 if (!num_vfs)
  be_vf_clear(adapter);

 adapter->num_vfs = num_vfs;

 if (adapter->num_vfs == 0 && pci_vfs_assigned(pdev)) {
  dev_warn(&pdev->dev,
    "Cannot disable VFs while they are assigned\n");
  return -EBUSY;
 }
 if (skyhawk_chip(adapter) && !pci_num_vf(pdev)) {
  be_calculate_vf_res(adapter, adapter->num_vfs,
        &vft_res);
  status = be_cmd_set_sriov_config(adapter, adapter->pool_res,
       adapter->num_vfs, &vft_res);
  if (status)
   dev_err(&pdev->dev,
    "Failed to optimize SR-IOV resources\n");
 }

 status = be_get_resources(adapter);
 if (status)
  return be_cmd_status(status);


 rtnl_lock();
 status = be_update_queues(adapter);
 rtnl_unlock();
 if (status)
  return be_cmd_status(status);

 if (adapter->num_vfs)
  status = be_vf_setup(adapter);

 if (!status)
  return adapter->num_vfs;

 return 0;
}
