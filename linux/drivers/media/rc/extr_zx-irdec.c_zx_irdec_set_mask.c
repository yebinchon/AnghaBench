
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zx_irdec {scalar_t__ base; } ;


 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void zx_irdec_set_mask(struct zx_irdec *irdec, unsigned int reg,
         u32 mask, u32 value)
{
 u32 data;

 data = readl(irdec->base + reg);
 data &= ~mask;
 data |= value & mask;
 writel(data, irdec->base + reg);
}
