
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct meson_ir {scalar_t__ reg; } ;


 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void meson_ir_set_mask(struct meson_ir *ir, unsigned int reg,
         u32 mask, u32 value)
{
 u32 data;

 data = readl(ir->reg + reg);
 data &= ~mask;
 data |= (value & mask);
 writel(data, ir->reg + reg);
}
