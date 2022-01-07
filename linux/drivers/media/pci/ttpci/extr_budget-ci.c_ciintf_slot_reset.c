
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct saa7146_dev {int dummy; } ;
struct dvb_ca_en50221 {scalar_t__ data; } ;
struct TYPE_2__ {struct saa7146_dev* dev; } ;
struct budget_ci {TYPE_1__ budget; int slot_status; scalar_t__ ci_irq; } ;


 int BUDGET_VIDEO_PORTB ;
 int CICONTROL_RESET ;
 int DEBIADDR_CICONTROL ;
 int DEBICICTL ;
 int EINVAL ;
 int SAA7146_GPIO_IRQHI ;
 int SAA7146_GPIO_OUTHI ;
 int SLOTSTATUS_RESET ;
 int msleep (int) ;
 int saa7146_setgpio (struct saa7146_dev*,int,int ) ;
 int ttpci_budget_debiwrite (TYPE_1__*,int ,int ,int,int ,int,int ) ;
 int ttpci_budget_set_video_port (struct saa7146_dev*,int ) ;

__attribute__((used)) static int ciintf_slot_reset(struct dvb_ca_en50221 *ca, int slot)
{
 struct budget_ci *budget_ci = (struct budget_ci *) ca->data;
 struct saa7146_dev *saa = budget_ci->budget.dev;

 if (slot != 0)
  return -EINVAL;

 if (budget_ci->ci_irq) {

  saa7146_setgpio(saa, 0, SAA7146_GPIO_IRQHI);
 }
 budget_ci->slot_status = SLOTSTATUS_RESET;
 ttpci_budget_debiwrite(&budget_ci->budget, DEBICICTL, DEBIADDR_CICONTROL, 1, 0, 1, 0);
 msleep(1);
 ttpci_budget_debiwrite(&budget_ci->budget, DEBICICTL, DEBIADDR_CICONTROL, 1,
          CICONTROL_RESET, 1, 0);

 saa7146_setgpio(saa, 1, SAA7146_GPIO_OUTHI);
 ttpci_budget_set_video_port(saa, BUDGET_VIDEO_PORTB);
 return 0;
}
