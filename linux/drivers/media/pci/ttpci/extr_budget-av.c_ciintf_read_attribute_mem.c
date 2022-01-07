
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_ca_en50221 {scalar_t__ data; } ;
struct TYPE_2__ {int dev; } ;
struct budget_av {TYPE_1__ budget; } ;


 int DEBICICAM ;
 int EINVAL ;
 int ETIMEDOUT ;
 int SAA7146_GPIO_OUTHI ;
 int ciintf_slot_shutdown (struct dvb_ca_en50221*,int) ;
 int pr_info (char*) ;
 int saa7146_setgpio (int ,int,int ) ;
 int ttpci_budget_debiread (TYPE_1__*,int ,int,int,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int ciintf_read_attribute_mem(struct dvb_ca_en50221 *ca, int slot, int address)
{
 struct budget_av *budget_av = (struct budget_av *) ca->data;
 int result;

 if (slot != 0)
  return -EINVAL;

 saa7146_setgpio(budget_av->budget.dev, 1, SAA7146_GPIO_OUTHI);
 udelay(1);

 result = ttpci_budget_debiread(&budget_av->budget, DEBICICAM, address & 0xfff, 1, 0, 1);
 if (result == -ETIMEDOUT) {
  ciintf_slot_shutdown(ca, slot);
  pr_info("cam ejected 1\n");
 }
 return result;
}
