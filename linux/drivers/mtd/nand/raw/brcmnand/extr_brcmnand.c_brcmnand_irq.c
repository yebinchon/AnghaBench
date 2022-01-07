
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmnand_controller {TYPE_1__* soc; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ (* ctlrdy_ack ) (TYPE_1__*) ;} ;


 int IRQ_NONE ;
 int brcmnand_ctlrdy_irq (int,void*) ;
 scalar_t__ stub1 (TYPE_1__*) ;

__attribute__((used)) static irqreturn_t brcmnand_irq(int irq, void *data)
{
 struct brcmnand_controller *ctrl = data;

 if (ctrl->soc->ctlrdy_ack(ctrl->soc))
  return brcmnand_ctlrdy_irq(irq, data);

 return IRQ_NONE;
}
