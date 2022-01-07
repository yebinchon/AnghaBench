
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r592_device {scalar_t__ mmio; } ;


 int __raw_readl (scalar_t__) ;
 int be32_to_cpu (int ) ;
 int dbg_reg (char*,int,int ) ;

__attribute__((used)) static inline u32 r592_read_reg_raw_be(struct r592_device *dev, int address)
{
 u32 value = __raw_readl(dev->mmio + address);
 dbg_reg("reg #%02d == 0x%08x", address, value);
 return be32_to_cpu(value);
}
