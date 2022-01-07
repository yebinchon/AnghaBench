
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ican3_dev {int num; int napi; TYPE_2__* ctrl; TYPE_1__* dpmctrl; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int int_disable; } ;
struct TYPE_3__ {int interrupt; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ioread8 (int *) ;
 int iowrite8 (int,int *) ;
 int napi_schedule (int *) ;

__attribute__((used)) static irqreturn_t ican3_irq(int irq, void *dev_id)
{
 struct ican3_dev *mod = dev_id;
 u8 stat;





 stat = ioread8(&mod->ctrl->int_disable) & (1 << mod->num);
 if (stat == (1 << mod->num))
  return IRQ_NONE;


 ioread8(&mod->dpmctrl->interrupt);


 iowrite8(1 << mod->num, &mod->ctrl->int_disable);
 napi_schedule(&mod->napi);
 return IRQ_HANDLED;
}
