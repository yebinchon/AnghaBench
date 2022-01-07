
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct be_resources {int member_0; } ;
struct be_adapter {TYPE_1__* pdev; int pool_res; } ;
struct TYPE_3__ {int dev; } ;


 int be_calculate_vf_res (struct be_adapter*,int ,struct be_resources*) ;
 int be_cmd_set_sriov_config (struct be_adapter*,int ,int ,struct be_resources*) ;
 int be_get_sriov_config (struct be_adapter*) ;
 scalar_t__ be_max_vfs (struct be_adapter*) ;
 int dev_err (int *,char*) ;
 int pci_num_vf (TYPE_1__*) ;
 int pci_sriov_set_totalvfs (TYPE_1__*,scalar_t__) ;
 scalar_t__ skyhawk_chip (struct be_adapter*) ;

__attribute__((used)) static void be_alloc_sriov_res(struct be_adapter *adapter)
{
 int old_vfs = pci_num_vf(adapter->pdev);
 struct be_resources vft_res = {0};
 int status;

 be_get_sriov_config(adapter);

 if (!old_vfs)
  pci_sriov_set_totalvfs(adapter->pdev, be_max_vfs(adapter));






 if (skyhawk_chip(adapter) && be_max_vfs(adapter) && !old_vfs) {
  be_calculate_vf_res(adapter, 0, &vft_res);
  status = be_cmd_set_sriov_config(adapter, adapter->pool_res, 0,
       &vft_res);
  if (status)
   dev_err(&adapter->pdev->dev,
    "Failed to optimize SRIOV resources\n");
 }
}
