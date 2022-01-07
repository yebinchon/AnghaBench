
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int EIO ;
 int ETIMEDOUT ;
 int LBCIF_DWORD1_GROUP ;
 int MAX_NUM_REGISTER_POLLS ;
 scalar_t__ pci_read_config_dword (struct pci_dev*,int ,int*) ;

__attribute__((used)) static int eeprom_wait_ready(struct pci_dev *pdev, u32 *status)
{
 u32 reg;
 int i;






 for (i = 0; i < MAX_NUM_REGISTER_POLLS; i++) {
  if (pci_read_config_dword(pdev, LBCIF_DWORD1_GROUP, &reg))
   return -EIO;


  if ((reg & 0x3000) == 0x3000) {
   if (status)
    *status = reg;
   return reg & 0xFF;
  }
 }
 return -ETIMEDOUT;
}
