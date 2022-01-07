
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_ir {scalar_t__ base; } ;


 int __raw_readl (scalar_t__) ;

__attribute__((used)) static u32 mtk_r32(struct mtk_ir *ir, unsigned int reg)
{
 return __raw_readl(ir->base + reg);
}
