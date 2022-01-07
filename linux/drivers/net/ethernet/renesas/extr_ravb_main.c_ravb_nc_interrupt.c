
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int RAVB_NC ;
 int ravb_dma_interrupt (int,void*,int ) ;

__attribute__((used)) static irqreturn_t ravb_nc_interrupt(int irq, void *dev_id)
{
 return ravb_dma_interrupt(irq, dev_id, RAVB_NC);
}
