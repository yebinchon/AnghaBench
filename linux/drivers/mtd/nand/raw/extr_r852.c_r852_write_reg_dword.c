
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct r852_device {scalar_t__ mmio; } ;


 int cpu_to_le32 (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void r852_write_reg_dword(struct r852_device *dev,
       int address, uint32_t value)
{
 writel(cpu_to_le32(value), dev->mmio + address);
}
