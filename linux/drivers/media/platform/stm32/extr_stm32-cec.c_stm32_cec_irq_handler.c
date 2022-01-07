
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_cec {int regmap; int irq_status; } ;
typedef int irqreturn_t ;


 int ALL_RX_IT ;
 int ALL_TX_IT ;
 int CEC_ISR ;
 int IRQ_WAKE_THREAD ;
 int regmap_read (int ,int ,int *) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static irqreturn_t stm32_cec_irq_handler(int irq, void *arg)
{
 struct stm32_cec *cec = arg;

 regmap_read(cec->regmap, CEC_ISR, &cec->irq_status);

 regmap_update_bits(cec->regmap, CEC_ISR,
      ALL_TX_IT | ALL_RX_IT,
      ALL_TX_IT | ALL_RX_IT);

 return IRQ_WAKE_THREAD;
}
