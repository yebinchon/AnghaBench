
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ base; } ;
struct atmel_pmecc {TYPE_1__ regs; } ;


 scalar_t__ ATMEL_PMECC_CTRL ;
 int PMECC_CTRL_DISABLE ;
 int PMECC_CTRL_RST ;
 int writel (int ,scalar_t__) ;

void atmel_pmecc_reset(struct atmel_pmecc *pmecc)
{
 writel(PMECC_CTRL_RST, pmecc->regs.base + ATMEL_PMECC_CTRL);
 writel(PMECC_CTRL_DISABLE, pmecc->regs.base + ATMEL_PMECC_CTRL);
}
