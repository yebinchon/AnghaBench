
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct saa7146_dev {int dummy; } ;
struct dvb_ca_en50221 {scalar_t__ data; } ;
struct TYPE_2__ {struct saa7146_dev* dev; } ;
struct budget_ci {TYPE_1__ budget; } ;


 int BUDGET_VIDEO_PORTB ;
 int EINVAL ;
 int SAA7146_GPIO_OUTHI ;
 int saa7146_setgpio (struct saa7146_dev*,int,int ) ;
 int ttpci_budget_set_video_port (struct saa7146_dev*,int ) ;

__attribute__((used)) static int ciintf_slot_shutdown(struct dvb_ca_en50221 *ca, int slot)
{
 struct budget_ci *budget_ci = (struct budget_ci *) ca->data;
 struct saa7146_dev *saa = budget_ci->budget.dev;

 if (slot != 0)
  return -EINVAL;

 saa7146_setgpio(saa, 1, SAA7146_GPIO_OUTHI);
 ttpci_budget_set_video_port(saa, BUDGET_VIDEO_PORTB);
 return 0;
}
