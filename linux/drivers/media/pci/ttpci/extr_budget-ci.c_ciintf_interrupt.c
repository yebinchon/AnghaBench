
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct saa7146_dev {int dummy; } ;
struct TYPE_2__ {int ci_present; struct saa7146_dev* dev; } ;
struct budget_ci {int slot_status; int ca; TYPE_1__ budget; } ;


 unsigned int CICONTROL_CAMDETECT ;
 int DEBIADDR_CICONTROL ;
 int DEBICICTL ;
 int DVB_CA_EN50221_CAMCHANGE_INSERTED ;
 int DVB_CA_EN50221_CAMCHANGE_REMOVED ;
 int SAA7146_GPIO_IRQHI ;
 int SAA7146_GPIO_IRQLO ;
 int SLOTSTATUS_NONE ;
 int SLOTSTATUS_OCCUPIED ;
 int SLOTSTATUS_PRESENT ;
 int SLOTSTATUS_READY ;
 int SLOTSTATUS_RESET ;
 int dvb_ca_en50221_camchange_irq (int *,int ,int ) ;
 int dvb_ca_en50221_camready_irq (int *,int ) ;
 int dvb_ca_en50221_frda_irq (int *,int ) ;
 int saa7146_setgpio (struct saa7146_dev*,int ,int ) ;
 unsigned int ttpci_budget_debiread (TYPE_1__*,int ,int ,int,int,int ) ;

__attribute__((used)) static void ciintf_interrupt(unsigned long data)
{
 struct budget_ci *budget_ci = (struct budget_ci *) data;
 struct saa7146_dev *saa = budget_ci->budget.dev;
 unsigned int flags;


 if (!budget_ci->budget.ci_present)
  return;


 flags = ttpci_budget_debiread(&budget_ci->budget, DEBICICTL, DEBIADDR_CICONTROL, 1, 1, 0);
 if (flags & CICONTROL_CAMDETECT) {


  saa7146_setgpio(saa, 0, SAA7146_GPIO_IRQLO);

  if (budget_ci->slot_status & SLOTSTATUS_NONE) {

   budget_ci->slot_status = SLOTSTATUS_PRESENT;
   dvb_ca_en50221_camchange_irq(&budget_ci->ca, 0,
           DVB_CA_EN50221_CAMCHANGE_INSERTED);

  } else if (budget_ci->slot_status & SLOTSTATUS_RESET) {

   budget_ci->slot_status = SLOTSTATUS_READY;
   dvb_ca_en50221_camready_irq(&budget_ci->ca, 0);

  } else if (budget_ci->slot_status & SLOTSTATUS_READY) {

   dvb_ca_en50221_frda_irq(&budget_ci->ca, 0);
  }
 } else {




  saa7146_setgpio(saa, 0, SAA7146_GPIO_IRQHI);


  if (budget_ci->slot_status & SLOTSTATUS_OCCUPIED) {

   budget_ci->slot_status = SLOTSTATUS_NONE;
   dvb_ca_en50221_camchange_irq(&budget_ci->ca, 0,
           DVB_CA_EN50221_CAMCHANGE_REMOVED);
  }
 }
}
