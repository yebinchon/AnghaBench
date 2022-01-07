
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpsw_common {int dma; TYPE_1__* wr_regs; } ;
struct TYPE_2__ {int rx_en; int tx_en; } ;


 int cpdma_ctlr_int_ctrl (int ,int) ;
 int writel_relaxed (int,int *) ;

void cpsw_intr_enable(struct cpsw_common *cpsw)
{
 writel_relaxed(0xFF, &cpsw->wr_regs->tx_en);
 writel_relaxed(0xFF, &cpsw->wr_regs->rx_en);

 cpdma_ctlr_int_ctrl(cpsw->dma, 1);
 return;
}
