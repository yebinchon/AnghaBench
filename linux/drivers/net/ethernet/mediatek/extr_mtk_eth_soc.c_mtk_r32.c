
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_eth {unsigned int base; } ;


 int __raw_readl (unsigned int) ;

u32 mtk_r32(struct mtk_eth *eth, unsigned reg)
{
 return __raw_readl(eth->base + reg);
}
