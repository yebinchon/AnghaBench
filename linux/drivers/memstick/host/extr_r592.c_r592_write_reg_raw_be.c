
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r592_device {scalar_t__ mmio; } ;


 int __raw_writel (int ,scalar_t__) ;
 int cpu_to_be32 (int ) ;
 int dbg_reg (char*,int,int ) ;

__attribute__((used)) static inline void r592_write_reg_raw_be(struct r592_device *dev,
       int address, u32 value)
{
 dbg_reg("reg #%02d <- 0x%08x", address, value);
 __raw_writel(cpu_to_be32(value), dev->mmio + address);
}
