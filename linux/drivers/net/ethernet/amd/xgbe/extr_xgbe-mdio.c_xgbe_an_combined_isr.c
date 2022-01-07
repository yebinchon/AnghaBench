
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int xgbe_an_isr_task (unsigned long) ;

__attribute__((used)) static irqreturn_t xgbe_an_combined_isr(struct xgbe_prv_data *pdata)
{
 xgbe_an_isr_task((unsigned long)pdata);

 return IRQ_HANDLED;
}
