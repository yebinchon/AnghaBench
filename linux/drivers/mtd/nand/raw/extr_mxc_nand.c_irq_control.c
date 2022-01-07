
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mxc_nand_host {TYPE_1__* devtype_data; int irq; } ;
struct TYPE_2__ {int (* irq_control ) (struct mxc_nand_host*,int) ;scalar_t__ irqpending_quirk; } ;


 int disable_irq_nosync (int ) ;
 int enable_irq (int ) ;
 int stub1 (struct mxc_nand_host*,int) ;

__attribute__((used)) static void irq_control(struct mxc_nand_host *host, int activate)
{
 if (host->devtype_data->irqpending_quirk) {
  if (activate)
   enable_irq(host->irq);
  else
   disable_irq_nosync(host->irq);
 } else {
  host->devtype_data->irq_control(host, activate);
 }
}
