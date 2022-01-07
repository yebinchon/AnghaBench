
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int devfn; } ;
struct net_device {int perm_addr; int addr_len; int dev_addr; } ;
struct ixgb_adapter {int netdev; int hw; } ;
typedef int pci_ers_result_t ;


 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_RECOVERED ;
 scalar_t__ PCI_FUNC (int ) ;
 int is_valid_ether_addr (int ) ;
 int ixgb_get_ee_mac_addr (int *,int ) ;
 int ixgb_reset (struct ixgb_adapter*) ;
 int ixgb_validate_eeprom_checksum (int *) ;
 int memcpy (int ,int ,int ) ;
 struct ixgb_adapter* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_err (struct ixgb_adapter*,int ,int ,char*) ;
 int netif_stop_queue (struct net_device*) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int probe ;

__attribute__((used)) static pci_ers_result_t ixgb_io_slot_reset(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct ixgb_adapter *adapter = netdev_priv(netdev);

 if (pci_enable_device(pdev)) {
  netif_err(adapter, probe, adapter->netdev,
     "Cannot re-enable PCI device after reset\n");
  return PCI_ERS_RESULT_DISCONNECT;
 }


 if (0 != PCI_FUNC (pdev->devfn))
  return PCI_ERS_RESULT_RECOVERED;

 pci_set_master(pdev);

 netif_carrier_off(netdev);
 netif_stop_queue(netdev);
 ixgb_reset(adapter);


 if (!ixgb_validate_eeprom_checksum(&adapter->hw)) {
  netif_err(adapter, probe, adapter->netdev,
     "After reset, the EEPROM checksum is not valid\n");
  return PCI_ERS_RESULT_DISCONNECT;
 }
 ixgb_get_ee_mac_addr(&adapter->hw, netdev->dev_addr);
 memcpy(netdev->perm_addr, netdev->dev_addr, netdev->addr_len);

 if (!is_valid_ether_addr(netdev->perm_addr)) {
  netif_err(adapter, probe, adapter->netdev,
     "After reset, invalid MAC address\n");
  return PCI_ERS_RESULT_DISCONNECT;
 }

 return PCI_ERS_RESULT_RECOVERED;
}
