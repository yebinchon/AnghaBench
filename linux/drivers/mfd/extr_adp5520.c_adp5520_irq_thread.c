
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint8_t ;
struct adp5520_chip {int client; int notifier_list; } ;
typedef int irqreturn_t ;


 unsigned int ADP5520_CMPR_INT ;
 unsigned int ADP5520_GPI_INT ;
 unsigned int ADP5520_KP_INT ;
 unsigned int ADP5520_KR_INT ;
 int ADP5520_MODE_STATUS ;
 unsigned int ADP5520_OVP_INT ;
 int IRQ_HANDLED ;
 int __adp5520_ack_bits (int ,int ,unsigned int) ;
 int __adp5520_read (int ,int ,unsigned int*) ;
 int blocking_notifier_call_chain (int *,unsigned int,int *) ;

__attribute__((used)) static irqreturn_t adp5520_irq_thread(int irq, void *data)
{
 struct adp5520_chip *chip = data;
 unsigned int events;
 uint8_t reg_val;
 int ret;

 ret = __adp5520_read(chip->client, ADP5520_MODE_STATUS, &reg_val);
 if (ret)
  goto out;

 events = reg_val & (ADP5520_OVP_INT | ADP5520_CMPR_INT |
  ADP5520_GPI_INT | ADP5520_KR_INT | ADP5520_KP_INT);

 blocking_notifier_call_chain(&chip->notifier_list, events, ((void*)0));

 __adp5520_ack_bits(chip->client, ADP5520_MODE_STATUS, events);

out:
 return IRQ_HANDLED;
}
