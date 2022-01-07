
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_eth {unsigned int base; } ;


 int __raw_writel (int ,unsigned int) ;

void mtk_w32(struct mtk_eth *eth, u32 val, unsigned reg)
{
 __raw_writel(val, eth->base + reg);
}
