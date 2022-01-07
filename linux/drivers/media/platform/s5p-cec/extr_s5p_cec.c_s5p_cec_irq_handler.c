
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int len; int msg; int rx_status; } ;
struct s5p_cec_dev {scalar_t__ rx; TYPE_1__ msg; int dev; void* tx; } ;
typedef int irqreturn_t ;


 int CEC_RX_STATUS_OK ;
 int CEC_STATUS_RX_DONE ;
 int CEC_STATUS_RX_ERROR ;
 int CEC_STATUS_TX_DONE ;
 int CEC_STATUS_TX_ERROR ;
 int CEC_STATUS_TX_NACK ;
 int IRQ_WAKE_THREAD ;
 scalar_t__ STATE_BUSY ;
 void* STATE_DONE ;
 void* STATE_ERROR ;
 scalar_t__ STATE_IDLE ;
 void* STATE_NACK ;
 int dev_dbg (int ,char*) ;
 int s5p_cec_enable_rx (struct s5p_cec_dev*) ;
 int s5p_cec_get_rx_buf (struct s5p_cec_dev*,int,int ) ;
 int s5p_cec_get_status (struct s5p_cec_dev*) ;
 int s5p_cec_rx_reset (struct s5p_cec_dev*) ;
 int s5p_clr_pending_rx (struct s5p_cec_dev*) ;
 int s5p_clr_pending_tx (struct s5p_cec_dev*) ;

__attribute__((used)) static irqreturn_t s5p_cec_irq_handler(int irq, void *priv)
{
 struct s5p_cec_dev *cec = priv;
 u32 status = 0;

 status = s5p_cec_get_status(cec);

 dev_dbg(cec->dev, "irq received\n");

 if (status & CEC_STATUS_TX_DONE) {
  if (status & CEC_STATUS_TX_NACK) {
   dev_dbg(cec->dev, "CEC_STATUS_TX_NACK set\n");
   cec->tx = STATE_NACK;
  } else if (status & CEC_STATUS_TX_ERROR) {
   dev_dbg(cec->dev, "CEC_STATUS_TX_ERROR set\n");
   cec->tx = STATE_ERROR;
  } else {
   dev_dbg(cec->dev, "CEC_STATUS_TX_DONE\n");
   cec->tx = STATE_DONE;
  }
  s5p_clr_pending_tx(cec);
 }

 if (status & CEC_STATUS_RX_DONE) {
  if (status & CEC_STATUS_RX_ERROR) {
   dev_dbg(cec->dev, "CEC_STATUS_RX_ERROR set\n");
   s5p_cec_rx_reset(cec);
   s5p_cec_enable_rx(cec);
  } else {
   dev_dbg(cec->dev, "CEC_STATUS_RX_DONE set\n");
   if (cec->rx != STATE_IDLE)
    dev_dbg(cec->dev, "Buffer overrun (worker did not process previous message)\n");
   cec->rx = STATE_BUSY;
   cec->msg.len = status >> 24;
   cec->msg.rx_status = CEC_RX_STATUS_OK;
   s5p_cec_get_rx_buf(cec, cec->msg.len,
     cec->msg.msg);
   cec->rx = STATE_DONE;
   s5p_cec_enable_rx(cec);
  }

  s5p_clr_pending_rx(cec);
 }
 return IRQ_WAKE_THREAD;
}
