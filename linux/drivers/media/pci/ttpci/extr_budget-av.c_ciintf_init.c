
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct saa7146_dev {int dummy; } ;
struct dvb_ca_en50221 {int dummy; } ;
struct TYPE_5__ {struct budget_av* data; int poll_slot_status; int slot_ts_enable; int slot_shutdown; int slot_reset; int write_cam_control; int read_cam_control; int write_attribute_mem; int read_attribute_mem; int owner; } ;
struct TYPE_4__ {int ci_present; int dvb_adapter; struct saa7146_dev* dev; } ;
struct budget_av {TYPE_2__ ca; TYPE_1__ budget; int slot_status; } ;


 int MASK_11 ;
 int MASK_27 ;
 int MC1 ;
 int SAA7146_GPIO_OUTLO ;
 int SLOTSTATUS_NONE ;
 int THIS_MODULE ;
 int ciintf_poll_slot_status ;
 int ciintf_read_attribute_mem ;
 int ciintf_read_cam_control ;
 int ciintf_slot_reset ;
 int ciintf_slot_shutdown ;
 int ciintf_slot_ts_enable ;
 int ciintf_write_attribute_mem ;
 int ciintf_write_cam_control ;
 int dvb_ca_en50221_init (int *,TYPE_2__*,int ,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int pr_err (char*) ;
 int pr_info (char*) ;
 int saa7146_setgpio (struct saa7146_dev*,int,int ) ;
 int saa7146_write (struct saa7146_dev*,int ,int) ;

__attribute__((used)) static int ciintf_init(struct budget_av *budget_av)
{
 struct saa7146_dev *saa = budget_av->budget.dev;
 int result;

 memset(&budget_av->ca, 0, sizeof(struct dvb_ca_en50221));

 saa7146_setgpio(saa, 0, SAA7146_GPIO_OUTLO);
 saa7146_setgpio(saa, 1, SAA7146_GPIO_OUTLO);
 saa7146_setgpio(saa, 2, SAA7146_GPIO_OUTLO);
 saa7146_setgpio(saa, 3, SAA7146_GPIO_OUTLO);


 saa7146_write(saa, MC1, MASK_27 | MASK_11);


 budget_av->ca.owner = THIS_MODULE;
 budget_av->ca.read_attribute_mem = ciintf_read_attribute_mem;
 budget_av->ca.write_attribute_mem = ciintf_write_attribute_mem;
 budget_av->ca.read_cam_control = ciintf_read_cam_control;
 budget_av->ca.write_cam_control = ciintf_write_cam_control;
 budget_av->ca.slot_reset = ciintf_slot_reset;
 budget_av->ca.slot_shutdown = ciintf_slot_shutdown;
 budget_av->ca.slot_ts_enable = ciintf_slot_ts_enable;
 budget_av->ca.poll_slot_status = ciintf_poll_slot_status;
 budget_av->ca.data = budget_av;
 budget_av->budget.ci_present = 1;
 budget_av->slot_status = SLOTSTATUS_NONE;

 if ((result = dvb_ca_en50221_init(&budget_av->budget.dvb_adapter,
       &budget_av->ca, 0, 1)) != 0) {
  pr_err("ci initialisation failed\n");
  goto error;
 }

 pr_info("ci interface initialised\n");
 return 0;

error:
 saa7146_write(saa, MC1, MASK_27);
 return result;
}
