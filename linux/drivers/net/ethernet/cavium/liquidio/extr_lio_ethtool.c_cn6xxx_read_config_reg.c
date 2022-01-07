
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct octeon_device {int pci_dev; } ;


 int pci_read_config_dword (int ,int,int*) ;
 scalar_t__ sprintf (char*,char*,...) ;

__attribute__((used)) static int cn6xxx_read_config_reg(char *s, struct octeon_device *oct)
{
 u32 val;
 int i, len = 0;



 len += sprintf(s + len,
         "\n\t Octeon Config space Registers\n\n");

 for (i = 0; i <= 13; i++) {
  pci_read_config_dword(oct->pci_dev, (i * 4), &val);
  len += sprintf(s + len, "[0x%x] (Config[%d]): 0x%08x\n",
          (i * 4), i, val);
 }

 for (i = 30; i <= 34; i++) {
  pci_read_config_dword(oct->pci_dev, (i * 4), &val);
  len += sprintf(s + len, "[0x%x] (Config[%d]): 0x%08x\n",
          (i * 4), i, val);
 }

 return len;
}
