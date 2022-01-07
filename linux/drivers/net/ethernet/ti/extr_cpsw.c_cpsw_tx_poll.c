
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct napi_struct {int dummy; } ;
struct cpsw_common {int tx_irq_disabled; int * irqs_table; TYPE_2__* wr_regs; TYPE_1__* txv; } ;
struct TYPE_4__ {int tx_en; } ;
struct TYPE_3__ {int ch; } ;


 int cpdma_chan_process (int ,int) ;
 int enable_irq (int ) ;
 int napi_complete (struct napi_struct*) ;
 struct cpsw_common* napi_to_cpsw (struct napi_struct*) ;
 int writel (int,int *) ;

__attribute__((used)) static int cpsw_tx_poll(struct napi_struct *napi_tx, int budget)
{
 struct cpsw_common *cpsw = napi_to_cpsw(napi_tx);
 int num_tx;

 num_tx = cpdma_chan_process(cpsw->txv[0].ch, budget);
 if (num_tx < budget) {
  napi_complete(napi_tx);
  writel(0xff, &cpsw->wr_regs->tx_en);
  if (cpsw->tx_irq_disabled) {
   cpsw->tx_irq_disabled = 0;
   enable_irq(cpsw->irqs_table[1]);
  }
 }

 return num_tx;
}
