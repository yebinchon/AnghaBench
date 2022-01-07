
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct saa7146_dev {int dummy; } ;
struct dvb_ca_en50221 {int dummy; } ;
struct TYPE_7__ {struct budget_ci* data; int poll_slot_status; int slot_ts_enable; int slot_shutdown; int slot_reset; int write_cam_control; int read_cam_control; int write_attribute_mem; int read_attribute_mem; int owner; } ;
struct TYPE_6__ {int ci_present; int dvb_adapter; struct saa7146_dev* dev; } ;
struct budget_ci {scalar_t__ slot_status; int ci_irq; TYPE_3__ ca; TYPE_1__ budget; int ciintf_irq_tasklet; } ;


 int CICONTROL_CAMDETECT ;
 int CICONTROL_RESET ;
 int DEBIADDR_CICONTROL ;
 int DEBIADDR_CIVERSION ;
 int DEBICICTL ;
 int DVB_CA_EN50221_CAMCHANGE_INSERTED ;
 int DVB_CA_EN50221_CAMCHANGE_REMOVED ;
 int DVB_CA_EN50221_FLAG_IRQ_CAMCHANGE ;
 int DVB_CA_EN50221_FLAG_IRQ_DA ;
 int DVB_CA_EN50221_FLAG_IRQ_FR ;
 int ENODEV ;
 int MASK_03 ;
 int MASK_11 ;
 int MASK_27 ;
 int MC1 ;
 int SAA7146_GPIO_IRQHI ;
 int SAA7146_GPIO_IRQLO ;
 int SAA7146_IER_ENABLE (struct saa7146_dev*,int ) ;
 scalar_t__ SLOTSTATUS_NONE ;
 scalar_t__ SLOTSTATUS_PRESENT ;
 int THIS_MODULE ;
 int ciintf_interrupt ;
 int ciintf_poll_slot_status ;
 int ciintf_read_attribute_mem ;
 int ciintf_read_cam_control ;
 int ciintf_slot_reset ;
 int ciintf_slot_shutdown ;
 int ciintf_slot_ts_enable ;
 int ciintf_write_attribute_mem ;
 int ciintf_write_cam_control ;
 int dvb_ca_en50221_camchange_irq (TYPE_3__*,int ,int) ;
 int dvb_ca_en50221_init (int *,TYPE_3__*,int,int) ;
 int memset (TYPE_3__*,int ,int) ;
 int printk (char*) ;
 int saa7146_setgpio (struct saa7146_dev*,int ,int ) ;
 int saa7146_write (struct saa7146_dev*,int ,int) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int ttpci_budget_debiread (TYPE_1__*,int ,int ,int,int,int ) ;
 int ttpci_budget_debiwrite (TYPE_1__*,int ,int ,int,int ,int,int ) ;

__attribute__((used)) static int ciintf_init(struct budget_ci *budget_ci)
{
 struct saa7146_dev *saa = budget_ci->budget.dev;
 int flags;
 int result;
 int ci_version;
 int ca_flags;

 memset(&budget_ci->ca, 0, sizeof(struct dvb_ca_en50221));


 saa7146_write(saa, MC1, MASK_27 | MASK_11);


 ci_version = ttpci_budget_debiread(&budget_ci->budget, DEBICICTL, DEBIADDR_CIVERSION, 1, 1, 0);
 if ((ci_version & 0xa0) != 0xa0) {
  result = -ENODEV;
  goto error;
 }


 flags = ttpci_budget_debiread(&budget_ci->budget, DEBICICTL, DEBIADDR_CICONTROL, 1, 1, 0);
 budget_ci->slot_status = SLOTSTATUS_NONE;
 if (flags & CICONTROL_CAMDETECT)
  budget_ci->slot_status = SLOTSTATUS_PRESENT;


 if (ci_version == 0xa2) {
  ca_flags = 0;
  budget_ci->ci_irq = 0;
 } else {
  ca_flags = DVB_CA_EN50221_FLAG_IRQ_CAMCHANGE |
    DVB_CA_EN50221_FLAG_IRQ_FR |
    DVB_CA_EN50221_FLAG_IRQ_DA;
  budget_ci->ci_irq = 1;
 }


 budget_ci->ca.owner = THIS_MODULE;
 budget_ci->ca.read_attribute_mem = ciintf_read_attribute_mem;
 budget_ci->ca.write_attribute_mem = ciintf_write_attribute_mem;
 budget_ci->ca.read_cam_control = ciintf_read_cam_control;
 budget_ci->ca.write_cam_control = ciintf_write_cam_control;
 budget_ci->ca.slot_reset = ciintf_slot_reset;
 budget_ci->ca.slot_shutdown = ciintf_slot_shutdown;
 budget_ci->ca.slot_ts_enable = ciintf_slot_ts_enable;
 budget_ci->ca.poll_slot_status = ciintf_poll_slot_status;
 budget_ci->ca.data = budget_ci;
 if ((result = dvb_ca_en50221_init(&budget_ci->budget.dvb_adapter,
       &budget_ci->ca,
       ca_flags, 1)) != 0) {
  printk("budget_ci: CI interface detected, but initialisation failed.\n");
  goto error;
 }


 if (budget_ci->ci_irq) {
  tasklet_init(&budget_ci->ciintf_irq_tasklet, ciintf_interrupt, (unsigned long) budget_ci);
  if (budget_ci->slot_status != SLOTSTATUS_NONE) {
   saa7146_setgpio(saa, 0, SAA7146_GPIO_IRQLO);
  } else {
   saa7146_setgpio(saa, 0, SAA7146_GPIO_IRQHI);
  }
  SAA7146_IER_ENABLE(saa, MASK_03);
 }


 ttpci_budget_debiwrite(&budget_ci->budget, DEBICICTL, DEBIADDR_CICONTROL, 1,
          CICONTROL_RESET, 1, 0);


 printk("budget_ci: CI interface initialised\n");
 budget_ci->budget.ci_present = 1;


 if (budget_ci->ci_irq) {
  flags = DVB_CA_EN50221_CAMCHANGE_REMOVED;
  if (budget_ci->slot_status != SLOTSTATUS_NONE)
   flags = DVB_CA_EN50221_CAMCHANGE_INSERTED;
  dvb_ca_en50221_camchange_irq(&budget_ci->ca, 0, flags);
 }

 return 0;

error:
 saa7146_write(saa, MC1, MASK_27);
 return result;
}
