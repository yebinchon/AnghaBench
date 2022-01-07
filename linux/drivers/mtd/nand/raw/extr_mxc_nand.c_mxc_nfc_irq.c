
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mxc_nand_host {int op_completion; TYPE_1__* devtype_data; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* check_int ) (struct mxc_nand_host*) ;} ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int complete (int *) ;
 int irq_control (struct mxc_nand_host*,int ) ;
 int stub1 (struct mxc_nand_host*) ;

__attribute__((used)) static irqreturn_t mxc_nfc_irq(int irq, void *dev_id)
{
 struct mxc_nand_host *host = dev_id;

 if (!host->devtype_data->check_int(host))
  return IRQ_NONE;

 irq_control(host, 0);

 complete(&host->op_completion);

 return IRQ_HANDLED;
}
