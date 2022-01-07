
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcn36xx {int tx_irq; int rx_irq; } ;


 int IRQF_TRIGGER_HIGH ;
 int enable_irq_wake (int ) ;
 int free_irq (int ,struct wcn36xx*) ;
 int request_irq (int ,int ,int ,char*,struct wcn36xx*) ;
 int wcn36xx_err (char*) ;
 int wcn36xx_irq_rx_ready ;
 int wcn36xx_irq_tx_complete ;

__attribute__((used)) static int wcn36xx_dxe_request_irqs(struct wcn36xx *wcn)
{
 int ret;

 ret = request_irq(wcn->tx_irq, wcn36xx_irq_tx_complete,
     IRQF_TRIGGER_HIGH, "wcn36xx_tx", wcn);
 if (ret) {
  wcn36xx_err("failed to alloc tx irq\n");
  goto out_err;
 }

 ret = request_irq(wcn->rx_irq, wcn36xx_irq_rx_ready, IRQF_TRIGGER_HIGH,
     "wcn36xx_rx", wcn);
 if (ret) {
  wcn36xx_err("failed to alloc rx irq\n");
  goto out_txirq;
 }

 enable_irq_wake(wcn->rx_irq);

 return 0;

out_txirq:
 free_irq(wcn->tx_irq, wcn);
out_err:
 return ret;

}
