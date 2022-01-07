
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct venus_core {TYPE_1__* ops; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* isr_thread ) (struct venus_core*) ;} ;


 int stub1 (struct venus_core*) ;

irqreturn_t hfi_isr_thread(int irq, void *dev_id)
{
 struct venus_core *core = dev_id;

 return core->ops->isr_thread(core);
}
