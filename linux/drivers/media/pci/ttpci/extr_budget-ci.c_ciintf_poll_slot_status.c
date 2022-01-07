
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_ca_en50221 {scalar_t__ data; } ;
struct TYPE_2__ {int ci_present; } ;
struct budget_ci {int slot_status; TYPE_1__ budget; } ;


 unsigned int CICONTROL_CAMDETECT ;
 int DEBIADDR_CICONTROL ;
 int DEBICICTL ;
 int DVB_CA_EN50221_POLL_CAM_PRESENT ;
 int DVB_CA_EN50221_POLL_CAM_READY ;
 int EINVAL ;
 int SLOTSTATUS_NONE ;
 int SLOTSTATUS_PRESENT ;
 int SLOTSTATUS_READY ;
 int SLOTSTATUS_RESET ;
 int ciintf_read_attribute_mem (struct dvb_ca_en50221*,int,int ) ;
 unsigned int ttpci_budget_debiread (TYPE_1__*,int ,int ,int,int,int ) ;

__attribute__((used)) static int ciintf_poll_slot_status(struct dvb_ca_en50221 *ca, int slot, int open)
{
 struct budget_ci *budget_ci = (struct budget_ci *) ca->data;
 unsigned int flags;


 if (!budget_ci->budget.ci_present)
  return -EINVAL;


 flags = ttpci_budget_debiread(&budget_ci->budget, DEBICICTL, DEBIADDR_CICONTROL, 1, 1, 0);
 if (flags & CICONTROL_CAMDETECT) {

  if (budget_ci->slot_status & SLOTSTATUS_NONE) {
   budget_ci->slot_status = SLOTSTATUS_PRESENT;
  }


  if (budget_ci->slot_status & SLOTSTATUS_RESET) {
   if (ciintf_read_attribute_mem(ca, slot, 0) == 0x1d) {
    budget_ci->slot_status = SLOTSTATUS_READY;
   }
  }
 } else {
  budget_ci->slot_status = SLOTSTATUS_NONE;
 }

 if (budget_ci->slot_status != SLOTSTATUS_NONE) {
  if (budget_ci->slot_status & SLOTSTATUS_READY) {
   return DVB_CA_EN50221_POLL_CAM_PRESENT | DVB_CA_EN50221_POLL_CAM_READY;
  }
  return DVB_CA_EN50221_POLL_CAM_PRESENT;
 }

 return 0;
}
