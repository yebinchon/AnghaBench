
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int sprintf (char*,char*,...) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static ssize_t show_pci(struct device *d, struct device_attribute *attr,
   char *buf)
{
 struct pci_dev *pci_dev = to_pci_dev(d);
 char *out = buf;
 int i, j;
 u32 val;

 for (i = 0; i < 16; i++) {
  out += sprintf(out, "[%08X] ", i * 16);
  for (j = 0; j < 16; j += 4) {
   pci_read_config_dword(pci_dev, i * 16 + j, &val);
   out += sprintf(out, "%08X ", val);
  }
  out += sprintf(out, "\n");
 }

 return out - buf;
}
