
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int* msg; scalar_t__ len; } ;
struct stm32_cec {int irq_status; TYPE_1__ rx_msg; int adap; int regmap; } ;


 int CEC_RXDR ;
 int RXACKE ;
 int RXBR ;
 int RXEND ;
 int RXOVR ;
 int cec_received_msg (int ,TYPE_1__*) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static void stm32_rx_done(struct stm32_cec *cec, u32 status)
{
 if (cec->irq_status & (RXACKE | RXOVR)) {
  cec->rx_msg.len = 0;
  return;
 }

 if (cec->irq_status & RXBR) {
  u32 val;

  regmap_read(cec->regmap, CEC_RXDR, &val);
  cec->rx_msg.msg[cec->rx_msg.len++] = val & 0xFF;
 }

 if (cec->irq_status & RXEND) {
  cec_received_msg(cec->adap, &cec->rx_msg);
  cec->rx_msg.len = 0;
 }
}
