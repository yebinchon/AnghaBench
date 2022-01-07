
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct meson_ao_cec_device {int adap; scalar_t__ base; } ;


 scalar_t__ CEC_INTR_CLR_REG ;
 int CEC_INTR_TX ;
 int CEC_TX_MSG_CMD ;
 int CEC_TX_MSG_STATUS ;
 unsigned long CEC_TX_STATUS_ARB_LOST ;
 unsigned long CEC_TX_STATUS_ERROR ;
 unsigned long CEC_TX_STATUS_LOW_DRIVE ;
 unsigned long CEC_TX_STATUS_NACK ;
 unsigned long CEC_TX_STATUS_OK ;




 int TX_NO_OP ;
 int cec_transmit_attempt_done (int ,unsigned long) ;
 int meson_ao_cec_read (struct meson_ao_cec_device*,int ,int*,int*) ;
 int meson_ao_cec_write (struct meson_ao_cec_device*,int ,int ,int*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void meson_ao_cec_irq_tx(struct meson_ao_cec_device *ao_cec)
{
 unsigned long tx_status = 0;
 u8 stat;
 int ret = 0;

 meson_ao_cec_read(ao_cec, CEC_TX_MSG_STATUS, &stat, &ret);
 if (ret)
  goto tx_reg_err;

 switch (stat) {
 case 130:
  tx_status = CEC_TX_STATUS_OK;
  break;

 case 131:
  tx_status = CEC_TX_STATUS_ARB_LOST;
  break;

 case 128:
  tx_status = CEC_TX_STATUS_LOW_DRIVE;
  break;

 case 129:
 default:
  tx_status = CEC_TX_STATUS_NACK;
  break;
 }


 writel_relaxed(CEC_INTR_TX, ao_cec->base + CEC_INTR_CLR_REG);


 meson_ao_cec_write(ao_cec, CEC_TX_MSG_CMD, TX_NO_OP, &ret);
 if (ret)
  goto tx_reg_err;

 cec_transmit_attempt_done(ao_cec->adap, tx_status);
 return;

tx_reg_err:
 cec_transmit_attempt_done(ao_cec->adap, CEC_TX_STATUS_ERROR);
}
