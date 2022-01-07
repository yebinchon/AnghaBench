
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;


 int IPW_REG_AUTOINCREMENT_ADDRESS ;
 int IPW_REG_AUTOINCREMENT_DATA ;
 int IPW_REG_INDIRECT_ACCESS_ADDRESS ;
 scalar_t__ IPW_REG_INDIRECT_ACCESS_DATA ;
 int write_register (struct net_device*,int ,int) ;
 int write_register_byte (struct net_device*,scalar_t__,int const) ;

__attribute__((used)) static void write_nic_memory(struct net_device *dev, u32 addr, u32 len,
        const u8 * buf)
{
 u32 aligned_addr;
 u32 aligned_len;
 u32 dif_len;
 u32 i;


 aligned_addr = addr & (~0x3);
 dif_len = addr - aligned_addr;
 if (dif_len) {

  write_register(dev, IPW_REG_INDIRECT_ACCESS_ADDRESS,
          aligned_addr);
  for (i = dif_len; i < 4; i++, buf++)
   write_register_byte(dev,
         IPW_REG_INDIRECT_ACCESS_DATA + i,
         *buf);

  len -= dif_len;
  aligned_addr += 4;
 }


 write_register(dev, IPW_REG_AUTOINCREMENT_ADDRESS, aligned_addr);
 aligned_len = len & (~0x3);
 for (i = 0; i < aligned_len; i += 4, buf += 4, aligned_addr += 4)
  write_register(dev, IPW_REG_AUTOINCREMENT_DATA, *(u32 *) buf);


 dif_len = len - aligned_len;
 write_register(dev, IPW_REG_INDIRECT_ACCESS_ADDRESS, aligned_addr);
 for (i = 0; i < dif_len; i++, buf++)
  write_register_byte(dev, IPW_REG_INDIRECT_ACCESS_DATA + i,
        *buf);
}
