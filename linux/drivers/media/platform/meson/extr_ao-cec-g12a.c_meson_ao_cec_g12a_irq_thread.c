
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct meson_ao_cec_g12a_device {int regmap_cec; int adap; int regmap; } ;
typedef int irqreturn_t ;


 int CECB_CTRL ;
 int CECB_CTRL_SEND ;
 int CECB_CTRL_TYPE ;
 int CECB_INTR_ARB_LOSS ;
 int CECB_INTR_CLR_REG ;
 int CECB_INTR_DONE ;
 int CECB_INTR_EOM ;
 int CECB_INTR_FOLLOWER_ERR ;
 int CECB_INTR_INITIATOR_ERR ;
 int CECB_INTR_NACK ;
 int CECB_INTR_STAT_REG ;
 int CECB_LOCK_BUF ;
 int CECB_TX_CNT ;
 int CEC_TX_STATUS_ARB_LOST ;
 int CEC_TX_STATUS_ERROR ;
 int CEC_TX_STATUS_NACK ;
 int CEC_TX_STATUS_OK ;
 int IRQ_HANDLED ;
 int cec_transmit_attempt_done (int ,int ) ;
 int meson_ao_cec_g12a_irq_rx (struct meson_ao_cec_g12a_device*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int,int ) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static irqreturn_t meson_ao_cec_g12a_irq_thread(int irq, void *data)
{
 struct meson_ao_cec_g12a_device *ao_cec = data;
 u32 stat;

 regmap_read(ao_cec->regmap, CECB_INTR_STAT_REG, &stat);
 regmap_write(ao_cec->regmap, CECB_INTR_CLR_REG, stat);

 if (stat & CECB_INTR_DONE)
  cec_transmit_attempt_done(ao_cec->adap, CEC_TX_STATUS_OK);

 if (stat & CECB_INTR_EOM)
  meson_ao_cec_g12a_irq_rx(ao_cec);

 if (stat & CECB_INTR_NACK)
  cec_transmit_attempt_done(ao_cec->adap, CEC_TX_STATUS_NACK);

 if (stat & CECB_INTR_ARB_LOSS) {
  regmap_write(ao_cec->regmap_cec, CECB_TX_CNT, 0);
  regmap_update_bits(ao_cec->regmap_cec, CECB_CTRL,
       CECB_CTRL_SEND | CECB_CTRL_TYPE, 0);
  cec_transmit_attempt_done(ao_cec->adap, CEC_TX_STATUS_ARB_LOST);
 }


 if (stat & CECB_INTR_INITIATOR_ERR)
  cec_transmit_attempt_done(ao_cec->adap, CEC_TX_STATUS_ERROR);


 if (stat & CECB_INTR_FOLLOWER_ERR)
  regmap_write(ao_cec->regmap_cec, CECB_LOCK_BUF, 0);

 return IRQ_HANDLED;
}
