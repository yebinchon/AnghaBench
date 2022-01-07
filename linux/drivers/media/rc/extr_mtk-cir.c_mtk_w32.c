
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_ir {scalar_t__ base; } ;


 int __raw_writel (int ,scalar_t__) ;

__attribute__((used)) static void mtk_w32(struct mtk_ir *ir, u32 val, unsigned int reg)
{
 __raw_writel(val, ir->base + reg);
}
