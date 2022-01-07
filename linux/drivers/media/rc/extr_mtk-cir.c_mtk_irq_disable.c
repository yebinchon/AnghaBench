
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mtk_ir {TYPE_1__* data; } ;
struct TYPE_2__ {int * regs; } ;


 size_t MTK_IRINT_EN_REG ;
 int mtk_r32 (struct mtk_ir*,int ) ;
 int mtk_w32 (struct mtk_ir*,int,int ) ;

__attribute__((used)) static inline void mtk_irq_disable(struct mtk_ir *ir, u32 mask)
{
 u32 val;

 val = mtk_r32(ir, ir->data->regs[MTK_IRINT_EN_REG]);
 mtk_w32(ir, val & ~mask, ir->data->regs[MTK_IRINT_EN_REG]);
}
