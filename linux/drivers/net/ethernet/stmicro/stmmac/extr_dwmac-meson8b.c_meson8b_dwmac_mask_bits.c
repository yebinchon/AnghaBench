
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct meson8b_dwmac {int regs; } ;


 int readl (int) ;
 int writel (int,int) ;

__attribute__((used)) static void meson8b_dwmac_mask_bits(struct meson8b_dwmac *dwmac, u32 reg,
        u32 mask, u32 value)
{
 u32 data;

 data = readl(dwmac->regs + reg);
 data &= ~mask;
 data |= (value & mask);

 writel(data, dwmac->regs + reg);
}
