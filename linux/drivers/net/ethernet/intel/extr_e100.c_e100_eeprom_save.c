
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nic {int eeprom_wc; int * eeprom; } ;


 int EINVAL ;
 int cpu_to_le16 (int) ;
 int e100_eeprom_read (struct nic*,int*,int ) ;
 int e100_eeprom_write (struct nic*,int,int,int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int e100_eeprom_save(struct nic *nic, u16 start, u16 count)
{
 u16 addr, addr_len = 8, checksum = 0;


 e100_eeprom_read(nic, &addr_len, 0);
 nic->eeprom_wc = 1 << addr_len;

 if (start + count >= nic->eeprom_wc)
  return -EINVAL;

 for (addr = start; addr < start + count; addr++)
  e100_eeprom_write(nic, addr_len, addr, nic->eeprom[addr]);



 for (addr = 0; addr < nic->eeprom_wc - 1; addr++)
  checksum += le16_to_cpu(nic->eeprom[addr]);
 nic->eeprom[nic->eeprom_wc - 1] = cpu_to_le16(0xBABA - checksum);
 e100_eeprom_write(nic, addr_len, nic->eeprom_wc - 1,
  nic->eeprom[nic->eeprom_wc - 1]);

 return 0;
}
