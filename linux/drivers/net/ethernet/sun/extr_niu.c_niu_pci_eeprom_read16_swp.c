
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct niu {int dummy; } ;


 int niu_pci_eeprom_read (struct niu*,scalar_t__) ;

__attribute__((used)) static int niu_pci_eeprom_read16_swp(struct niu *np, u32 off)
{
 int err = niu_pci_eeprom_read(np, off);
 u16 val;

 if (err < 0)
  return err;

 val = (err & 0xff);
 err = niu_pci_eeprom_read(np, off + 1);
 if (err < 0)
  return err;

 val |= (err & 0xff) << 8;

 return val;
}
