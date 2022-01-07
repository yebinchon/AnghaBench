
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1x00 {int dummy; } ;


 int UCB_ADC_CR ;
 int UCB_ADC_DATA ;
 int UCB_ADC_DAT_VAL ;
 int UCB_ADC_ENA ;
 int UCB_ADC_START ;
 int UCB_IE_ADC ;
 int UCB_IE_CLEAR ;
 int UCB_IE_FAL ;
 int UCB_IE_RIS ;
 int probe_irq_off (unsigned long) ;
 unsigned long probe_irq_on () ;
 int ucb1x00_reg_read (struct ucb1x00*,int ) ;
 int ucb1x00_reg_write (struct ucb1x00*,int ,int) ;

__attribute__((used)) static int ucb1x00_detect_irq(struct ucb1x00 *ucb)
{
 unsigned long mask;

 mask = probe_irq_on();




 ucb1x00_reg_write(ucb, UCB_IE_RIS, UCB_IE_ADC);
 ucb1x00_reg_write(ucb, UCB_IE_FAL, UCB_IE_ADC);
 ucb1x00_reg_write(ucb, UCB_IE_CLEAR, 0xffff);
 ucb1x00_reg_write(ucb, UCB_IE_CLEAR, 0);




 ucb1x00_reg_write(ucb, UCB_ADC_CR, UCB_ADC_ENA);
 ucb1x00_reg_write(ucb, UCB_ADC_CR, UCB_ADC_ENA | UCB_ADC_START);




 while ((ucb1x00_reg_read(ucb, UCB_ADC_DATA) & UCB_ADC_DAT_VAL) == 0);
 ucb1x00_reg_write(ucb, UCB_ADC_CR, 0);




 ucb1x00_reg_write(ucb, UCB_IE_RIS, 0);
 ucb1x00_reg_write(ucb, UCB_IE_FAL, 0);
 ucb1x00_reg_write(ucb, UCB_IE_CLEAR, 0xffff);
 ucb1x00_reg_write(ucb, UCB_IE_CLEAR, 0);




 return probe_irq_off(mask);
}
