
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ len; int * msg; } ;
struct stm32_cec {int irq_status; scalar_t__ tx_cnt; int adap; int regmap; TYPE_1__ tx_msg; } ;


 int ARBLST ;
 int CEC_CR ;
 int CEC_TXDR ;
 int CEC_TX_STATUS_ARB_LOST ;
 int CEC_TX_STATUS_ERROR ;
 int CEC_TX_STATUS_NACK ;
 int CEC_TX_STATUS_OK ;
 int TXACKE ;
 int TXBR ;
 int TXEND ;
 int TXEOM ;
 int TXERR ;
 int TXUDR ;
 int cec_transmit_done (int ,int ,int,int,int ,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void stm32_tx_done(struct stm32_cec *cec, u32 status)
{
 if (status & (TXERR | TXUDR)) {
  cec_transmit_done(cec->adap, CEC_TX_STATUS_ERROR,
      0, 0, 0, 1);
  return;
 }

 if (status & ARBLST) {
  cec_transmit_done(cec->adap, CEC_TX_STATUS_ARB_LOST,
      1, 0, 0, 0);
  return;
 }

 if (status & TXACKE) {
  cec_transmit_done(cec->adap, CEC_TX_STATUS_NACK,
      0, 1, 0, 0);
  return;
 }

 if (cec->irq_status & TXBR) {

  if (cec->tx_cnt < cec->tx_msg.len)
   regmap_write(cec->regmap, CEC_TXDR,
         cec->tx_msg.msg[cec->tx_cnt++]);


  if (cec->tx_cnt == cec->tx_msg.len)
   regmap_update_bits(cec->regmap, CEC_CR, TXEOM, TXEOM);
 }

 if (cec->irq_status & TXEND)
  cec_transmit_done(cec->adap, CEC_TX_STATUS_OK, 0, 0, 0, 0);
}
