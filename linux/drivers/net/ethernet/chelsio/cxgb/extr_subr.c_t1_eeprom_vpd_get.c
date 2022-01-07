
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct chelsio_vpd_t {int dummy; } ;
typedef int adapter_t ;
typedef int __le32 ;


 int t1_seeprom_read (int *,int,int *) ;

__attribute__((used)) static int t1_eeprom_vpd_get(adapter_t *adapter, struct chelsio_vpd_t *vpd)
{
 int addr, ret = 0;

 for (addr = 0; !ret && addr < sizeof(*vpd); addr += sizeof(u32))
  ret = t1_seeprom_read(adapter, addr,
          (__le32 *)((u8 *)vpd + addr));

 return ret;
}
