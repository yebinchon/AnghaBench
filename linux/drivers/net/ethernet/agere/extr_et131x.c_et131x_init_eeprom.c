
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int revision; int dev; } ;
struct et131x_adapter {int has_eeprom; int* eeprom_data; struct pci_dev* pdev; } ;


 int EIO ;
 int ET1310_PCI_EEPROM_STATUS ;
 int dev_err (int *,char*,...) ;
 int eeprom_read (struct et131x_adapter*,int,int*) ;
 scalar_t__ eeprom_write (struct et131x_adapter*,int,int const) ;
 scalar_t__ pci_read_config_byte (struct pci_dev*,int ,int*) ;

__attribute__((used)) static int et131x_init_eeprom(struct et131x_adapter *adapter)
{
 struct pci_dev *pdev = adapter->pdev;
 u8 eestatus;

 pci_read_config_byte(pdev, ET1310_PCI_EEPROM_STATUS, &eestatus);







 if (pci_read_config_byte(pdev, ET1310_PCI_EEPROM_STATUS, &eestatus)) {
  dev_err(&pdev->dev,
   "Could not read PCI config space for EEPROM Status\n");
  return -EIO;
 }




 if (eestatus & 0x4C) {
  int write_failed = 0;

  if (pdev->revision == 0x01) {
   int i;
   static const u8 eedata[4] = { 0xFE, 0x13, 0x10, 0xFF };





   for (i = 0; i < 3; i++)
    if (eeprom_write(adapter, i, eedata[i]) < 0)
     write_failed = 1;
  }
  if (pdev->revision != 0x01 || write_failed) {
   dev_err(&pdev->dev,
    "Fatal EEPROM Status Error - 0x%04x\n",
    eestatus);







   adapter->has_eeprom = 0;
   return -EIO;
  }
 }
 adapter->has_eeprom = 1;




 eeprom_read(adapter, 0x70, &adapter->eeprom_data[0]);
 eeprom_read(adapter, 0x71, &adapter->eeprom_data[1]);

 if (adapter->eeprom_data[0] != 0xcd)

  adapter->eeprom_data[1] = 0x00;

 return 0;
}
