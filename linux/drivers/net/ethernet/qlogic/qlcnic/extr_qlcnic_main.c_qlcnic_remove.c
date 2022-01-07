
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_hardware_context {struct qlcnic_hardware_context* fw_info; int mailbox; } ;
struct qlcnic_adapter {int * qlcnic_wq; struct qlcnic_hardware_context* ahw; int state; struct qlcnic_hardware_context* eswitch; struct qlcnic_hardware_context* npars; int dcb; int idc_aen_work; struct net_device* netdev; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;


 int __QLCNIC_RESETTING ;
 int cancel_delayed_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int destroy_workqueue (int *) ;
 int free_netdev (struct net_device*) ;
 int kfree (struct qlcnic_hardware_context*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_pcie_error_reporting (struct pci_dev*) ;
 struct qlcnic_adapter* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 scalar_t__ qlcnic_82xx_check (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_83xx_check (struct qlcnic_adapter*) ;
 int qlcnic_83xx_detach_mailbox_work (struct qlcnic_adapter*) ;
 int qlcnic_83xx_free_mailbox (int ) ;
 int qlcnic_83xx_free_mbx_intr (struct qlcnic_adapter*) ;
 int qlcnic_83xx_initialize_nic (struct qlcnic_adapter*,int ) ;
 int qlcnic_cancel_idc_work (struct qlcnic_adapter*) ;
 int qlcnic_cleanup_pci_map (struct qlcnic_hardware_context*) ;
 int qlcnic_clr_all_drv_state (struct qlcnic_adapter*,int ) ;
 int qlcnic_dcb_free (int ) ;
 int qlcnic_detach (struct qlcnic_adapter*) ;
 int qlcnic_free_adapter_resources (struct qlcnic_adapter*) ;
 int qlcnic_free_lb_filters_mem (struct qlcnic_adapter*) ;
 int qlcnic_release_firmware (struct qlcnic_adapter*) ;
 int qlcnic_remove_sysfs (struct qlcnic_adapter*) ;
 int qlcnic_sriov_cleanup (struct qlcnic_adapter*) ;
 int qlcnic_sriov_pf_disable (struct qlcnic_adapter*) ;
 int qlcnic_teardown_intr (struct qlcnic_adapter*) ;
 int qlcnic_unregister_hwmon_dev (struct qlcnic_adapter*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void qlcnic_remove(struct pci_dev *pdev)
{
 struct qlcnic_adapter *adapter;
 struct net_device *netdev;
 struct qlcnic_hardware_context *ahw;

 adapter = pci_get_drvdata(pdev);
 if (adapter == ((void*)0))
  return;

 netdev = adapter->netdev;

 qlcnic_cancel_idc_work(adapter);
 qlcnic_sriov_pf_disable(adapter);
 ahw = adapter->ahw;

 unregister_netdev(netdev);
 qlcnic_sriov_cleanup(adapter);

 if (qlcnic_83xx_check(adapter)) {
  qlcnic_83xx_initialize_nic(adapter, 0);
  cancel_delayed_work_sync(&adapter->idc_aen_work);
  qlcnic_83xx_free_mbx_intr(adapter);
  qlcnic_83xx_detach_mailbox_work(adapter);
  qlcnic_83xx_free_mailbox(ahw->mailbox);
  kfree(ahw->fw_info);
 }

 qlcnic_dcb_free(adapter->dcb);
 qlcnic_detach(adapter);
 kfree(adapter->npars);
 kfree(adapter->eswitch);

 if (qlcnic_82xx_check(adapter))
  qlcnic_clr_all_drv_state(adapter, 0);

 clear_bit(__QLCNIC_RESETTING, &adapter->state);

 qlcnic_free_lb_filters_mem(adapter);

 qlcnic_teardown_intr(adapter);

 qlcnic_remove_sysfs(adapter);

 qlcnic_unregister_hwmon_dev(adapter);

 qlcnic_cleanup_pci_map(adapter->ahw);

 qlcnic_release_firmware(adapter);

 pci_disable_pcie_error_reporting(pdev);
 pci_release_regions(pdev);
 pci_disable_device(pdev);

 if (adapter->qlcnic_wq) {
  destroy_workqueue(adapter->qlcnic_wq);
  adapter->qlcnic_wq = ((void*)0);
 }

 qlcnic_free_adapter_resources(adapter);
 kfree(ahw);
 free_netdev(netdev);
}
