
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_cec {int irq_status; } ;
typedef int irqreturn_t ;


 int ALL_RX_IT ;
 int ALL_TX_IT ;
 int IRQ_HANDLED ;
 int stm32_rx_done (struct stm32_cec*,int) ;
 int stm32_tx_done (struct stm32_cec*,int) ;

__attribute__((used)) static irqreturn_t stm32_cec_irq_thread(int irq, void *arg)
{
 struct stm32_cec *cec = arg;

 if (cec->irq_status & ALL_TX_IT)
  stm32_tx_done(cec, cec->irq_status);

 if (cec->irq_status & ALL_RX_IT)
  stm32_rx_done(cec, cec->irq_status);

 cec->irq_status = 0;

 return IRQ_HANDLED;
}
