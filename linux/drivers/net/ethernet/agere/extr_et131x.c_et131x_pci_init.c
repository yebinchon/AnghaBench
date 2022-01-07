
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int pcie_mpss; int dev; } ;
struct et131x_adapter {scalar_t__ rom_addr; int addr; int has_eeprom; } ;


 int EIO ;
 int ET1310_PCI_ACK_NACK ;
 int ET1310_PCI_L0L1LATENCY ;
 scalar_t__ ET1310_PCI_MAC_ADDRESS ;
 int ET1310_PCI_REPLAY ;
 int ETH_ALEN ;
 int dev_err (int *,char*) ;
 int et131x_hwaddr_init (struct et131x_adapter*) ;
 int et131x_init_eeprom (struct et131x_adapter*) ;
 int ether_addr_copy (int ,scalar_t__) ;
 int pci_is_pcie (struct pci_dev*) ;
 scalar_t__ pci_read_config_byte (struct pci_dev*,scalar_t__,scalar_t__) ;
 scalar_t__ pci_write_config_byte (struct pci_dev*,int ,int) ;
 scalar_t__ pci_write_config_word (struct pci_dev*,int ,int const) ;
 scalar_t__ pcie_set_readrq (struct pci_dev*,int) ;

__attribute__((used)) static int et131x_pci_init(struct et131x_adapter *adapter,
      struct pci_dev *pdev)
{
 u16 max_payload;
 int i, rc;

 rc = et131x_init_eeprom(adapter);
 if (rc < 0)
  goto out;

 if (!pci_is_pcie(pdev)) {
  dev_err(&pdev->dev, "Missing PCIe capabilities\n");
  goto err_out;
 }


 max_payload = pdev->pcie_mpss;

 if (max_payload < 2) {
  static const u16 acknak[2] = { 0x76, 0xD0 };
  static const u16 replay[2] = { 0x1E0, 0x2ED };

  if (pci_write_config_word(pdev, ET1310_PCI_ACK_NACK,
       acknak[max_payload])) {
   dev_err(&pdev->dev,
    "Could not write PCI config space for ACK/NAK\n");
   goto err_out;
  }
  if (pci_write_config_word(pdev, ET1310_PCI_REPLAY,
       replay[max_payload])) {
   dev_err(&pdev->dev,
    "Could not write PCI config space for Replay Timer\n");
   goto err_out;
  }
 }




 if (pci_write_config_byte(pdev, ET1310_PCI_L0L1LATENCY, 0x11)) {
  dev_err(&pdev->dev,
   "Could not write PCI config space for Latency Timers\n");
  goto err_out;
 }


 if (pcie_set_readrq(pdev, 2048)) {
  dev_err(&pdev->dev,
   "Couldn't change PCI config space for Max read size\n");
  goto err_out;
 }




 if (!adapter->has_eeprom) {
  et131x_hwaddr_init(adapter);
  return 0;
 }

 for (i = 0; i < ETH_ALEN; i++) {
  if (pci_read_config_byte(pdev, ET1310_PCI_MAC_ADDRESS + i,
      adapter->rom_addr + i)) {
   dev_err(&pdev->dev, "Could not read PCI config space for MAC address\n");
   goto err_out;
  }
 }
 ether_addr_copy(adapter->addr, adapter->rom_addr);
out:
 return rc;
err_out:
 rc = -EIO;
 goto out;
}
