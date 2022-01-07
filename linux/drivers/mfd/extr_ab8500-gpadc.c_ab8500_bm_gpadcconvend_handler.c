
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ab8500_gpadc {int ab8500_gpadc_complete; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (int *) ;

__attribute__((used)) static irqreturn_t ab8500_bm_gpadcconvend_handler(int irq, void *_gpadc)
{
 struct ab8500_gpadc *gpadc = _gpadc;

 complete(&gpadc->ab8500_gpadc_complete);

 return IRQ_HANDLED;
}
