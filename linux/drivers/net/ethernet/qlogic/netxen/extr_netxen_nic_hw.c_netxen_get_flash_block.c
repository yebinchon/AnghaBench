
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netxen_adapter {int dummy; } ;
typedef int __le32 ;


 int cpu_to_le32 (int) ;
 int memcpy (int *,int *,int) ;
 int netxen_rom_fast_read (struct netxen_adapter*,int,int*) ;

__attribute__((used)) static int netxen_get_flash_block(struct netxen_adapter *adapter, int base,
      int size, __le32 * buf)
{
 int i, v, addr;
 __le32 *ptr32;
 int ret;

 addr = base;
 ptr32 = buf;
 for (i = 0; i < size / sizeof(u32); i++) {
  ret = netxen_rom_fast_read(adapter, addr, &v);
  if (ret)
   return ret;

  *ptr32 = cpu_to_le32(v);
  ptr32++;
  addr += sizeof(u32);
 }
 if ((char *)buf + size > (char *)ptr32) {
  __le32 local;
  ret = netxen_rom_fast_read(adapter, addr, &v);
  if (ret)
   return ret;
  local = cpu_to_le32(v);
  memcpy(ptr32, &local, (char *)buf + size - (char *)ptr32);
 }

 return 0;
}
