
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r592_device {scalar_t__ mmio; } ;


 int dbg_reg (char*,int,int,int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static inline void r592_set_reg_mask(struct r592_device *dev,
       int address, u32 mask)
{
 u32 reg = readl(dev->mmio + address);
 dbg_reg("reg #%02d |= 0x%08x (old =0x%08x)", address, mask, reg);
 writel(reg | mask , dev->mmio + address);
}
