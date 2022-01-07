
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1x00 {int adc_cr; } ;


 int TASK_INTERRUPTIBLE ;
 int UCB_ADC_CR ;
 unsigned int UCB_ADC_DAT (unsigned int) ;
 int UCB_ADC_DATA ;
 unsigned int UCB_ADC_DAT_VAL ;
 int UCB_ADC_START ;
 int UCB_ADC_SYNC_ENA ;
 int schedule_timeout (int) ;
 int set_current_state (int ) ;
 unsigned int ucb1x00_reg_read (struct ucb1x00*,int ) ;
 int ucb1x00_reg_write (struct ucb1x00*,int ,int) ;

unsigned int ucb1x00_adc_read(struct ucb1x00 *ucb, int adc_channel, int sync)
{
 unsigned int val;

 if (sync)
  adc_channel |= UCB_ADC_SYNC_ENA;

 ucb1x00_reg_write(ucb, UCB_ADC_CR, ucb->adc_cr | adc_channel);
 ucb1x00_reg_write(ucb, UCB_ADC_CR, ucb->adc_cr | adc_channel | UCB_ADC_START);

 for (;;) {
  val = ucb1x00_reg_read(ucb, UCB_ADC_DATA);
  if (val & UCB_ADC_DAT_VAL)
   break;

  set_current_state(TASK_INTERRUPTIBLE);
  schedule_timeout(1);
 }

 return UCB_ADC_DAT(val);
}
