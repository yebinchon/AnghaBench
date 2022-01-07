
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sh_vou_device {scalar_t__ base; } ;


 int __raw_readl (scalar_t__) ;
 int __raw_writel (int,scalar_t__) ;

__attribute__((used)) static void sh_vou_reg_a_set(struct sh_vou_device *vou_dev, unsigned int reg,
        u32 value, u32 mask)
{
 u32 old = __raw_readl(vou_dev->base + reg);

 value = (value & mask) | (old & ~mask);
 __raw_writel(value, vou_dev->base + reg);
}
