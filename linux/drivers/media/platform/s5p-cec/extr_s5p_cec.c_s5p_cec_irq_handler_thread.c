
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_cec_dev {int tx; int rx; int msg; int adap; int dev; } ;
typedef int irqreturn_t ;


 int CEC_TX_STATUS_ERROR ;
 int CEC_TX_STATUS_MAX_RETRIES ;
 int CEC_TX_STATUS_NACK ;
 int CEC_TX_STATUS_OK ;
 int IRQ_HANDLED ;



 void* STATE_IDLE ;

 int cec_received_msg (int ,int *) ;
 int cec_transmit_done (int ,int,int ,int,int ,int) ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static irqreturn_t s5p_cec_irq_handler_thread(int irq, void *priv)
{
 struct s5p_cec_dev *cec = priv;

 dev_dbg(cec->dev, "irq processing thread\n");
 switch (cec->tx) {
 case 130:
  cec_transmit_done(cec->adap, CEC_TX_STATUS_OK, 0, 0, 0, 0);
  cec->tx = STATE_IDLE;
  break;
 case 128:
  cec_transmit_done(cec->adap,
   CEC_TX_STATUS_MAX_RETRIES | CEC_TX_STATUS_NACK,
   0, 1, 0, 0);
  cec->tx = STATE_IDLE;
  break;
 case 129:
  cec_transmit_done(cec->adap,
   CEC_TX_STATUS_MAX_RETRIES | CEC_TX_STATUS_ERROR,
   0, 0, 0, 1);
  cec->tx = STATE_IDLE;
  break;
 case 131:
  dev_err(cec->dev, "state set to busy, this should not occur here\n");
  break;
 default:
  break;
 }

 switch (cec->rx) {
 case 130:
  cec_received_msg(cec->adap, &cec->msg);
  cec->rx = STATE_IDLE;
  break;
 default:
  break;
 }

 return IRQ_HANDLED;
}
