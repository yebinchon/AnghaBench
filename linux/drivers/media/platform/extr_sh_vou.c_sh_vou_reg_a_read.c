
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sh_vou_device {scalar_t__ base; } ;


 int __raw_readl (scalar_t__) ;

__attribute__((used)) static u32 sh_vou_reg_a_read(struct sh_vou_device *vou_dev, unsigned int reg)
{
 return __raw_readl(vou_dev->base + reg);
}
