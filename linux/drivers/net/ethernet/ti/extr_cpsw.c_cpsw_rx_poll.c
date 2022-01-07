
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct napi_struct {int dummy; } ;
struct cpsw_common {int rx_irq_disabled; int * irqs_table; TYPE_2__* wr_regs; TYPE_1__* rxv; } ;
struct TYPE_4__ {int rx_en; } ;
struct TYPE_3__ {int ch; } ;


 int cpdma_chan_process (int ,int) ;
 int enable_irq (int ) ;
 int napi_complete_done (struct napi_struct*,int) ;
 struct cpsw_common* napi_to_cpsw (struct napi_struct*) ;
 int writel (int,int *) ;

__attribute__((used)) static int cpsw_rx_poll(struct napi_struct *napi_rx, int budget)
{
 struct cpsw_common *cpsw = napi_to_cpsw(napi_rx);
 int num_rx;

 num_rx = cpdma_chan_process(cpsw->rxv[0].ch, budget);
 if (num_rx < budget) {
  napi_complete_done(napi_rx, num_rx);
  writel(0xff, &cpsw->wr_regs->rx_en);
  if (cpsw->rx_irq_disabled) {
   cpsw->rx_irq_disabled = 0;
   enable_irq(cpsw->irqs_table[0]);
  }
 }

 return num_rx;
}
