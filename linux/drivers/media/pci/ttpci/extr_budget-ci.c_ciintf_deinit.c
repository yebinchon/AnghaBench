
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct saa7146_dev {int dummy; } ;
struct TYPE_2__ {struct saa7146_dev* dev; } ;
struct budget_ci {int ca; TYPE_1__ budget; int ciintf_irq_tasklet; scalar_t__ ci_irq; } ;


 int CICONTROL_RESET ;
 int DEBIADDR_CICONTROL ;
 int DEBICICTL ;
 int MASK_03 ;
 int MASK_27 ;
 int MC1 ;
 int SAA7146_GPIO_INPUT ;
 int SAA7146_IER_DISABLE (struct saa7146_dev*,int ) ;
 int dvb_ca_en50221_release (int *) ;
 int msleep (int) ;
 int saa7146_setgpio (struct saa7146_dev*,int,int ) ;
 int saa7146_write (struct saa7146_dev*,int ,int ) ;
 int tasklet_kill (int *) ;
 int ttpci_budget_debiwrite (TYPE_1__*,int ,int ,int,int ,int,int ) ;

__attribute__((used)) static void ciintf_deinit(struct budget_ci *budget_ci)
{
 struct saa7146_dev *saa = budget_ci->budget.dev;


 if (budget_ci->ci_irq) {
  SAA7146_IER_DISABLE(saa, MASK_03);
  saa7146_setgpio(saa, 0, SAA7146_GPIO_INPUT);
  tasklet_kill(&budget_ci->ciintf_irq_tasklet);
 }


 ttpci_budget_debiwrite(&budget_ci->budget, DEBICICTL, DEBIADDR_CICONTROL, 1, 0, 1, 0);
 msleep(1);
 ttpci_budget_debiwrite(&budget_ci->budget, DEBICICTL, DEBIADDR_CICONTROL, 1,
          CICONTROL_RESET, 1, 0);


 saa7146_setgpio(saa, 1, SAA7146_GPIO_INPUT);


 dvb_ca_en50221_release(&budget_ci->ca);


 saa7146_write(saa, MC1, MASK_27);
}
