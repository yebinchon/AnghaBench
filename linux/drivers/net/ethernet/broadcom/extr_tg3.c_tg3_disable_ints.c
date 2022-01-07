
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tg3 {int misc_host_ctrl; int irq_max; TYPE_1__* napi; } ;
struct TYPE_2__ {int int_mbox; } ;


 int MISC_HOST_CTRL_MASK_PCI_INT ;
 int TG3PCI_MISC_HOST_CTRL ;
 int tw32 (int ,int) ;
 int tw32_mailbox_f (int ,int) ;

__attribute__((used)) static void tg3_disable_ints(struct tg3 *tp)
{
 int i;

 tw32(TG3PCI_MISC_HOST_CTRL,
      (tp->misc_host_ctrl | MISC_HOST_CTRL_MASK_PCI_INT));
 for (i = 0; i < tp->irq_max; i++)
  tw32_mailbox_f(tp->napi[i].int_mbox, 0x00000001);
}
