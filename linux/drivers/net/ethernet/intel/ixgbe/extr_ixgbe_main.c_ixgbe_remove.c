
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct net_device {scalar_t__ reg_state; } ;
struct ixgbe_adapter {int flags; int state; int af_xdp_zc_qps; TYPE_1__* rss_key; TYPE_1__* mac_table; TYPE_1__** jump_tables; int io_addr; TYPE_1__* ixgbe_ieee_ets; TYPE_1__* ixgbe_ieee_pfc; int hw; scalar_t__ mii_bus; int service_task; struct net_device* netdev; } ;
struct TYPE_2__ {struct TYPE_2__* mask; struct TYPE_2__* input; } ;


 int IXGBE_DCA_CTRL ;
 int IXGBE_DCA_CTRL_DCA_DISABLE ;
 int IXGBE_FLAG_DCA_ENABLED ;
 int IXGBE_MAX_LINK_HANDLE ;
 int IXGBE_WRITE_REG (int *,int ,int ) ;
 scalar_t__ NETREG_REGISTERED ;
 int __IXGBE_DISABLED ;
 int __IXGBE_REMOVING ;
 int bitmap_free (int ) ;
 int cancel_work_sync (int *) ;
 int dca_remove_requester (int *) ;
 int e_dev_info (char*) ;
 int free_netdev (struct net_device*) ;
 int iounmap (int ) ;
 int ixgbe_clear_interrupt_scheme (struct ixgbe_adapter*) ;
 int ixgbe_dbg_adapter_exit (struct ixgbe_adapter*) ;
 int ixgbe_del_sanmac_netdev (struct net_device*) ;
 int ixgbe_disable_sriov (struct ixgbe_adapter*) ;
 int ixgbe_release_hw_control (struct ixgbe_adapter*) ;
 int ixgbe_stop_ipsec_offload (struct ixgbe_adapter*) ;
 int ixgbe_sysfs_exit (struct ixgbe_adapter*) ;
 int kfree (TYPE_1__*) ;
 int mdiobus_unregister (scalar_t__) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_pcie_error_reporting (struct pci_dev*) ;
 struct ixgbe_adapter* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_mem_regions (struct pci_dev*) ;
 int set_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void ixgbe_remove(struct pci_dev *pdev)
{
 struct ixgbe_adapter *adapter = pci_get_drvdata(pdev);
 struct net_device *netdev;
 bool disable_dev;
 int i;


 if (!adapter)
  return;

 netdev = adapter->netdev;
 ixgbe_dbg_adapter_exit(adapter);

 set_bit(__IXGBE_REMOVING, &adapter->state);
 cancel_work_sync(&adapter->service_task);

 if (adapter->mii_bus)
  mdiobus_unregister(adapter->mii_bus);
 ixgbe_del_sanmac_netdev(netdev);




 if (netdev->reg_state == NETREG_REGISTERED)
  unregister_netdev(netdev);

 ixgbe_stop_ipsec_offload(adapter);
 ixgbe_clear_interrupt_scheme(adapter);

 ixgbe_release_hw_control(adapter);






 iounmap(adapter->io_addr);
 pci_release_mem_regions(pdev);

 e_dev_info("complete\n");

 for (i = 0; i < IXGBE_MAX_LINK_HANDLE; i++) {
  if (adapter->jump_tables[i]) {
   kfree(adapter->jump_tables[i]->input);
   kfree(adapter->jump_tables[i]->mask);
  }
  kfree(adapter->jump_tables[i]);
 }

 kfree(adapter->mac_table);
 kfree(adapter->rss_key);
 bitmap_free(adapter->af_xdp_zc_qps);
 disable_dev = !test_and_set_bit(__IXGBE_DISABLED, &adapter->state);
 free_netdev(netdev);

 pci_disable_pcie_error_reporting(pdev);

 if (disable_dev)
  pci_disable_device(pdev);
}
