
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mtk_ir {TYPE_1__* data; } ;
struct TYPE_2__ {int* regs; } ;


 size_t MTK_CHKDATA_REG ;

__attribute__((used)) static inline u32 mtk_chkdata_reg(struct mtk_ir *ir, u32 i)
{
 return ir->data->regs[MTK_CHKDATA_REG] + 4 * i;
}
