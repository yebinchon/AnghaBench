
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stih_cec {int irq_status; } ;
typedef int irqreturn_t ;


 int CEC_RX_DONE_STS ;
 int CEC_TX_DONE_STS ;
 int IRQ_HANDLED ;
 int stih_rx_done (struct stih_cec*,int) ;
 int stih_tx_done (struct stih_cec*,int) ;

__attribute__((used)) static irqreturn_t stih_cec_irq_handler_thread(int irq, void *priv)
{
 struct stih_cec *cec = priv;

 if (cec->irq_status & CEC_TX_DONE_STS)
  stih_tx_done(cec, cec->irq_status);

 if (cec->irq_status & CEC_RX_DONE_STS)
  stih_rx_done(cec, cec->irq_status);

 cec->irq_status = 0;

 return IRQ_HANDLED;
}
