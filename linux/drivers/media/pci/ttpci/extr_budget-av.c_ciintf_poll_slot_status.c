
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct saa7146_dev {int dummy; } ;
struct dvb_ca_en50221 {scalar_t__ data; } ;
struct TYPE_2__ {struct saa7146_dev* dev; } ;
struct budget_av {int slot_status; TYPE_1__ budget; } ;


 int DEBICICAM ;
 int DVB_CA_EN50221_POLL_CAM_PRESENT ;
 int DVB_CA_EN50221_POLL_CAM_READY ;
 int EINVAL ;
 int MASK_06 ;
 int PSR ;
 int SAA7146_GPIO_INPUT ;
 int SAA7146_GPIO_OUTLO ;
 int SLOTSTATUS_NONE ;
 void* SLOTSTATUS_PRESENT ;
 int SLOTSTATUS_READY ;
 int SLOTSTATUS_RESET ;
 int ciintf_read_attribute_mem (struct dvb_ca_en50221*,int,int ) ;
 int ciintf_slot_shutdown (struct dvb_ca_en50221*,int) ;
 int pr_info (char*) ;
 int saa7146_read (struct saa7146_dev*,int ) ;
 int saa7146_setgpio (struct saa7146_dev*,int,int ) ;
 int ttpci_budget_debiread (TYPE_1__*,int ,int ,int,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int ciintf_poll_slot_status(struct dvb_ca_en50221 *ca, int slot, int open)
{
 struct budget_av *budget_av = (struct budget_av *) ca->data;
 struct saa7146_dev *saa = budget_av->budget.dev;
 int result;

 if (slot != 0)
  return -EINVAL;



 if (budget_av->slot_status == SLOTSTATUS_NONE) {
  saa7146_setgpio(saa, 3, SAA7146_GPIO_INPUT);
  udelay(1);
  if (saa7146_read(saa, PSR) & MASK_06) {
   if (budget_av->slot_status == SLOTSTATUS_NONE) {
    budget_av->slot_status = SLOTSTATUS_PRESENT;
    pr_info("cam inserted A\n");
   }
  }
  saa7146_setgpio(saa, 3, SAA7146_GPIO_OUTLO);
 }







 if ((budget_av->slot_status == SLOTSTATUS_NONE) || (!open)) {
  saa7146_setgpio(budget_av->budget.dev, 1, SAA7146_GPIO_OUTLO);
  result = ttpci_budget_debiread(&budget_av->budget, DEBICICAM, 0, 1, 0, 1);
  if ((result >= 0) && (budget_av->slot_status == SLOTSTATUS_NONE)) {
   budget_av->slot_status = SLOTSTATUS_PRESENT;
   pr_info("cam inserted B\n");
  } else if (result < 0) {
   if (budget_av->slot_status != SLOTSTATUS_NONE) {
    ciintf_slot_shutdown(ca, slot);
    pr_info("cam ejected 5\n");
    return 0;
   }
  }
 }


 if (budget_av->slot_status == SLOTSTATUS_RESET) {
  result = ciintf_read_attribute_mem(ca, slot, 0);
  if (result == 0x1d) {
   budget_av->slot_status = SLOTSTATUS_READY;
  }
 }


 if (budget_av->slot_status != SLOTSTATUS_NONE) {
  if (budget_av->slot_status & SLOTSTATUS_READY) {
   return DVB_CA_EN50221_POLL_CAM_PRESENT | DVB_CA_EN50221_POLL_CAM_READY;
  }
  return DVB_CA_EN50221_POLL_CAM_PRESENT;
 }
 return 0;
}
