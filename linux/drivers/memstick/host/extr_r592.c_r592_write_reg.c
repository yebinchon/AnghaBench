
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r592_device {scalar_t__ mmio; } ;


 int dbg_reg (char*,int,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void r592_write_reg(struct r592_device *dev,
       int address, u32 value)
{
 dbg_reg("reg #%02d <- 0x%08x", address, value);
 writel(value, dev->mmio + address);
}
