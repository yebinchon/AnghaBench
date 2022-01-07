
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {unsigned int vpd_cap_addr; } ;
struct TYPE_3__ {TYPE_2__ pci; } ;
struct adapter {int pdev; TYPE_1__ params; } ;
typedef int __le32 ;


 int CH_ERR (struct adapter*,char*,int) ;
 int EEPROMSIZE ;
 int EEPROM_MAX_POLL ;
 int EEPROM_STAT_ADDR ;
 int EINVAL ;
 int EIO ;
 scalar_t__ PCI_VPD_ADDR ;
 int PCI_VPD_ADDR_F ;
 scalar_t__ PCI_VPD_DATA ;
 int cpu_to_le32 (int) ;
 int pci_read_config_dword (int ,scalar_t__,int*) ;
 int pci_read_config_word (int ,scalar_t__,int*) ;
 int pci_write_config_word (int ,scalar_t__,int) ;
 int udelay (int) ;

int t3_seeprom_read(struct adapter *adapter, u32 addr, __le32 *data)
{
 u16 val;
 int attempts = EEPROM_MAX_POLL;
 u32 v;
 unsigned int base = adapter->params.pci.vpd_cap_addr;

 if ((addr >= EEPROMSIZE && addr != EEPROM_STAT_ADDR) || (addr & 3))
  return -EINVAL;

 pci_write_config_word(adapter->pdev, base + PCI_VPD_ADDR, addr);
 do {
  udelay(10);
  pci_read_config_word(adapter->pdev, base + PCI_VPD_ADDR, &val);
 } while (!(val & PCI_VPD_ADDR_F) && --attempts);

 if (!(val & PCI_VPD_ADDR_F)) {
  CH_ERR(adapter, "reading EEPROM address 0x%x failed\n", addr);
  return -EIO;
 }
 pci_read_config_dword(adapter->pdev, base + PCI_VPD_DATA, &v);
 *data = cpu_to_le32(v);
 return 0;
}
