
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct secocec_data {int cec_adap; struct device* dev; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int SECOCEC_STATUS ;
 int SECOCEC_STATUS_MSG_RECEIVED_MASK ;
 int SECOCEC_STATUS_MSG_SENT_MASK ;
 int SECOCEC_STATUS_REG_1 ;
 int SECOCEC_STATUS_REG_1_CEC ;
 int SECOCEC_STATUS_REG_1_IR ;
 int dev_err_once (struct device*,char*,int) ;
 int dev_warn_once (struct device*,char*) ;
 int secocec_ir_rx (struct secocec_data*) ;
 int secocec_rx_done (int ,int) ;
 int secocec_tx_done (int ,int) ;
 int smb_rd16 (int ,int*) ;
 int smb_wr16 (int ,int) ;

__attribute__((used)) static irqreturn_t secocec_irq_handler(int irq, void *priv)
{
 struct secocec_data *cec = priv;
 struct device *dev = cec->dev;
 u16 status_val, cec_val, val = 0;
 int status;


 status = smb_rd16(SECOCEC_STATUS_REG_1, &status_val);
 if (status)
  goto err;

 if (status_val & SECOCEC_STATUS_REG_1_CEC) {

  status = smb_rd16(SECOCEC_STATUS, &cec_val);
  if (status)
   goto err;

  if (cec_val & SECOCEC_STATUS_MSG_RECEIVED_MASK)
   secocec_rx_done(cec->cec_adap, cec_val);

  if (cec_val & SECOCEC_STATUS_MSG_SENT_MASK)
   secocec_tx_done(cec->cec_adap, cec_val);

  if ((~cec_val & SECOCEC_STATUS_MSG_SENT_MASK) &&
      (~cec_val & SECOCEC_STATUS_MSG_RECEIVED_MASK))
   dev_warn_once(dev,
          "Message not received or sent, but interrupt fired");

  val = SECOCEC_STATUS_REG_1_CEC;
 }

 if (status_val & SECOCEC_STATUS_REG_1_IR) {
  val |= SECOCEC_STATUS_REG_1_IR;

  secocec_ir_rx(cec);
 }


 status = smb_wr16(SECOCEC_STATUS_REG_1, val);
 if (status)
  goto err;

 return IRQ_HANDLED;

err:
 dev_err_once(dev, "IRQ: R/W SMBus operation failed (%d)", status);


 val = SECOCEC_STATUS_REG_1_CEC | SECOCEC_STATUS_REG_1_IR;
 smb_wr16(SECOCEC_STATUS_REG_1, val);

 return IRQ_HANDLED;
}
