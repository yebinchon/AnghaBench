
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pasemi_dmachan {int* status; int chno; } ;
struct pasemi_mac_rxring {struct pasemi_dmachan chan; struct pasemi_mac* mac; } ;
struct pasemi_mac {int napi; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int PAS_IOB_DMA_RXCH_RESET (int ) ;
 unsigned int PAS_IOB_DMA_RXCH_RESET_DINTC ;
 unsigned int PAS_IOB_DMA_RXCH_RESET_SINTC ;
 int PAS_STATUS_CAUSE_M ;
 int PAS_STATUS_ERROR ;
 int PAS_STATUS_SOFT ;
 int napi_schedule (int *) ;
 int write_iob_reg (int ,unsigned int) ;

__attribute__((used)) static irqreturn_t pasemi_mac_rx_intr(int irq, void *data)
{
 const struct pasemi_mac_rxring *rxring = data;
 struct pasemi_mac *mac = rxring->mac;
 const struct pasemi_dmachan *chan = &rxring->chan;
 unsigned int reg;

 if (!(*chan->status & PAS_STATUS_CAUSE_M))
  return IRQ_NONE;





 reg = 0;
 if (*chan->status & PAS_STATUS_SOFT)
  reg |= PAS_IOB_DMA_RXCH_RESET_SINTC;
 if (*chan->status & PAS_STATUS_ERROR)
  reg |= PAS_IOB_DMA_RXCH_RESET_DINTC;

 napi_schedule(&mac->napi);

 write_iob_reg(PAS_IOB_DMA_RXCH_RESET(chan->chno), reg);

 return IRQ_HANDLED;
}
