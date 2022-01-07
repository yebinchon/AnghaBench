
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct saa7146_dev {int dummy; } ;
struct TYPE_4__ {int dev; int msp430_irq_tasklet; } ;
struct TYPE_3__ {struct saa7146_dev* dev; } ;
struct budget_ci {TYPE_2__ ir; TYPE_1__ budget; } ;


 int MASK_06 ;
 int SAA7146_GPIO_INPUT ;
 int SAA7146_IER_DISABLE (struct saa7146_dev*,int ) ;
 int rc_unregister_device (int ) ;
 int saa7146_setgpio (struct saa7146_dev*,int,int ) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void msp430_ir_deinit(struct budget_ci *budget_ci)
{
 struct saa7146_dev *saa = budget_ci->budget.dev;

 SAA7146_IER_DISABLE(saa, MASK_06);
 saa7146_setgpio(saa, 3, SAA7146_GPIO_INPUT);
 tasklet_kill(&budget_ci->ir.msp430_irq_tasklet);

 rc_unregister_device(budget_ci->ir.dev);
}
