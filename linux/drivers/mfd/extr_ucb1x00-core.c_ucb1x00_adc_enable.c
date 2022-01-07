
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1x00 {int adc_cr; int adc_mutex; } ;


 int UCB_ADC_CR ;
 int UCB_ADC_ENA ;
 int mutex_lock (int *) ;
 int ucb1x00_enable (struct ucb1x00*) ;
 int ucb1x00_reg_write (struct ucb1x00*,int ,int ) ;

void ucb1x00_adc_enable(struct ucb1x00 *ucb)
{
 mutex_lock(&ucb->adc_mutex);

 ucb->adc_cr |= UCB_ADC_ENA;

 ucb1x00_enable(ucb);
 ucb1x00_reg_write(ucb, UCB_ADC_CR, ucb->adc_cr);
}
