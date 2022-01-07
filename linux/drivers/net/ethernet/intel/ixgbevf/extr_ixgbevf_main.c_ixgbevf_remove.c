
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {scalar_t__ reg_state; } ;
struct ixgbevf_adapter {int state; int rss_key; int hw; int io_addr; int service_task; } ;


 scalar_t__ NETREG_REGISTERED ;
 int __IXGBEVF_DISABLED ;
 int __IXGBEVF_REMOVING ;
 int cancel_work_sync (int *) ;
 int free_netdev (struct net_device*) ;
 int hw_dbg (int *,char*) ;
 int iounmap (int ) ;
 int ixgbevf_clear_interrupt_scheme (struct ixgbevf_adapter*) ;
 int ixgbevf_reset_interrupt_capability (struct ixgbevf_adapter*) ;
 int ixgbevf_stop_ipsec_offload (struct ixgbevf_adapter*) ;
 int kfree (int ) ;
 struct ixgbevf_adapter* netdev_priv (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int set_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void ixgbevf_remove(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct ixgbevf_adapter *adapter;
 bool disable_dev;

 if (!netdev)
  return;

 adapter = netdev_priv(netdev);

 set_bit(__IXGBEVF_REMOVING, &adapter->state);
 cancel_work_sync(&adapter->service_task);

 if (netdev->reg_state == NETREG_REGISTERED)
  unregister_netdev(netdev);

 ixgbevf_stop_ipsec_offload(adapter);
 ixgbevf_clear_interrupt_scheme(adapter);
 ixgbevf_reset_interrupt_capability(adapter);

 iounmap(adapter->io_addr);
 pci_release_regions(pdev);

 hw_dbg(&adapter->hw, "Remove complete\n");

 kfree(adapter->rss_key);
 disable_dev = !test_and_set_bit(__IXGBEVF_DISABLED, &adapter->state);
 free_netdev(netdev);

 if (disable_dev)
  pci_disable_device(pdev);
}
