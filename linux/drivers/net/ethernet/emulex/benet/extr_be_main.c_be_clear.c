
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct be_resources {int member_0; } ;
struct be_adapter {int flags; int pool_res; struct pci_dev* pdev; } ;


 int BE_FLAGS_SETUP_DONE ;
 int be_calculate_vf_res (struct be_adapter*,int ,struct be_resources*) ;
 int be_cancel_worker (struct be_adapter*) ;
 int be_clear_queues (struct be_adapter*) ;
 int be_cmd_set_sriov_config (struct be_adapter*,int ,int ,struct be_resources*) ;
 int be_disable_vxlan_offloads (struct be_adapter*) ;
 int be_if_destroy (struct be_adapter*) ;
 int be_msix_disable (struct be_adapter*) ;
 scalar_t__ be_physfn (struct be_adapter*) ;
 int be_vf_clear (struct be_adapter*) ;
 int be_wq ;
 int flush_workqueue (int ) ;
 int pci_sriov_get_totalvfs (struct pci_dev*) ;
 int pci_vfs_assigned (struct pci_dev*) ;
 scalar_t__ skyhawk_chip (struct be_adapter*) ;
 scalar_t__ sriov_enabled (struct be_adapter*) ;

__attribute__((used)) static int be_clear(struct be_adapter *adapter)
{
 struct pci_dev *pdev = adapter->pdev;
 struct be_resources vft_res = {0};

 be_cancel_worker(adapter);

 flush_workqueue(be_wq);

 if (sriov_enabled(adapter))
  be_vf_clear(adapter);




 if (skyhawk_chip(adapter) && be_physfn(adapter) &&
     !pci_vfs_assigned(pdev)) {
  be_calculate_vf_res(adapter,
        pci_sriov_get_totalvfs(pdev),
        &vft_res);
  be_cmd_set_sriov_config(adapter, adapter->pool_res,
     pci_sriov_get_totalvfs(pdev),
     &vft_res);
 }

 be_disable_vxlan_offloads(adapter);

 be_if_destroy(adapter);

 be_clear_queues(adapter);

 be_msix_disable(adapter);
 adapter->flags &= ~BE_FLAGS_SETUP_DONE;
 return 0;
}
