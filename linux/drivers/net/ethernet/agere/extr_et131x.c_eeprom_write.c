
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pci_dev {scalar_t__ revision; } ;
struct et131x_adapter {struct pci_dev* pdev; } ;


 int EIO ;
 int LBCIF_ADDRESS_REGISTER ;
 int LBCIF_CONTROL_I2C_WRITE ;
 int LBCIF_CONTROL_LBCIF_ENABLE ;
 int LBCIF_CONTROL_REGISTER ;
 int LBCIF_DATA_REGISTER ;
 int LBCIF_STATUS_ACK_ERROR ;
 int LBCIF_STATUS_GENERAL_ERROR ;
 int MAX_NUM_WRITE_RETRIES ;
 int eeprom_wait_ready (struct pci_dev*,int*) ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 scalar_t__ pci_write_config_byte (struct pci_dev*,int ,int) ;
 scalar_t__ pci_write_config_dword (struct pci_dev*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int eeprom_write(struct et131x_adapter *adapter, u32 addr, u8 data)
{
 struct pci_dev *pdev = adapter->pdev;
 int index = 0;
 int retries;
 int err = 0;
 int writeok = 0;
 u32 status;
 u32 val = 0;
 err = eeprom_wait_ready(pdev, ((void*)0));
 if (err < 0)
  return err;






 if (pci_write_config_byte(pdev, LBCIF_CONTROL_REGISTER,
      LBCIF_CONTROL_LBCIF_ENABLE |
     LBCIF_CONTROL_I2C_WRITE))
  return -EIO;


 for (retries = 0; retries < MAX_NUM_WRITE_RETRIES; retries++) {
  if (pci_write_config_dword(pdev, LBCIF_ADDRESS_REGISTER, addr))
   break;



  if (pci_write_config_byte(pdev, LBCIF_DATA_REGISTER, data))
   break;







  err = eeprom_wait_ready(pdev, &status);
  if (err < 0)
   return 0;





  if ((status & LBCIF_STATUS_GENERAL_ERROR) &&
      adapter->pdev->revision == 0)
   break;
  if (status & LBCIF_STATUS_ACK_ERROR) {





   udelay(10);
   continue;
  }

  writeok = 1;
  break;
 }

 udelay(10);

 while (1) {
  if (pci_write_config_byte(pdev, LBCIF_CONTROL_REGISTER,
       LBCIF_CONTROL_LBCIF_ENABLE))
   writeok = 0;




  do {
   pci_write_config_dword(pdev,
            LBCIF_ADDRESS_REGISTER,
            addr);
   do {
    pci_read_config_dword(pdev,
            LBCIF_DATA_REGISTER,
            &val);
   } while ((val & 0x00010000) == 0);
  } while (val & 0x00040000);

  if ((val & 0xFF00) != 0xC000 || index == 10000)
   break;
  index++;
 }
 return writeok ? 0 : -EIO;
}
