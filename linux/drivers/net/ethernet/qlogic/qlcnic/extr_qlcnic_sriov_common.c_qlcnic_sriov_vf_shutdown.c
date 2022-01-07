
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int idc_aen_work; struct net_device* netdev; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;


 int QLCNIC_BC_CMD_CHANNEL_TERM ;
 int cancel_delayed_work_sync (int *) ;
 int netif_device_detach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 struct qlcnic_adapter* pci_get_drvdata (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int qlcnic_83xx_disable_mbx_intr (struct qlcnic_adapter*) ;
 int qlcnic_cancel_idc_work (struct qlcnic_adapter*) ;
 int qlcnic_down (struct qlcnic_adapter*,struct net_device*) ;
 int qlcnic_sriov_cfg_bc_intr (struct qlcnic_adapter*,int ) ;
 int qlcnic_sriov_channel_cfg_cmd (struct qlcnic_adapter*,int ) ;

__attribute__((used)) static int qlcnic_sriov_vf_shutdown(struct pci_dev *pdev)
{
 struct qlcnic_adapter *adapter = pci_get_drvdata(pdev);
 struct net_device *netdev = adapter->netdev;
 int retval;

 netif_device_detach(netdev);
 qlcnic_cancel_idc_work(adapter);

 if (netif_running(netdev))
  qlcnic_down(adapter, netdev);

 qlcnic_sriov_channel_cfg_cmd(adapter, QLCNIC_BC_CMD_CHANNEL_TERM);
 qlcnic_sriov_cfg_bc_intr(adapter, 0);
 qlcnic_83xx_disable_mbx_intr(adapter);
 cancel_delayed_work_sync(&adapter->idc_aen_work);

 retval = pci_save_state(pdev);
 if (retval)
  return retval;

 return 0;
}
