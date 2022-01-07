
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;
struct et131x_adapter {struct pci_dev* pdev; } ;


 int EIO ;
 int LBCIF_ADDRESS_REGISTER ;
 int LBCIF_CONTROL_LBCIF_ENABLE ;
 int LBCIF_CONTROL_REGISTER ;
 int LBCIF_STATUS_ACK_ERROR ;
 int eeprom_wait_ready (struct pci_dev*,int*) ;
 scalar_t__ pci_write_config_byte (struct pci_dev*,int ,int ) ;
 scalar_t__ pci_write_config_dword (struct pci_dev*,int ,int) ;

__attribute__((used)) static int eeprom_read(struct et131x_adapter *adapter, u32 addr, u8 *pdata)
{
 struct pci_dev *pdev = adapter->pdev;
 int err;
 u32 status;




 err = eeprom_wait_ready(pdev, ((void*)0));
 if (err < 0)
  return err;





 if (pci_write_config_byte(pdev, LBCIF_CONTROL_REGISTER,
      LBCIF_CONTROL_LBCIF_ENABLE))
  return -EIO;



 if (pci_write_config_dword(pdev, LBCIF_ADDRESS_REGISTER, addr))
  return -EIO;




 err = eeprom_wait_ready(pdev, &status);
 if (err < 0)
  return err;



 *pdata = err;

 return (status & LBCIF_STATUS_ACK_ERROR) ? -EIO : 0;
}
