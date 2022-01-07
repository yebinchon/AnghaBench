
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcan_pccard {int chan_count; TYPE_1__* channel; } ;
struct net_device {int dummy; } ;
typedef scalar_t__ irqreturn_t ;
struct TYPE_2__ {struct net_device* netdev; } ;


 scalar_t__ IRQ_HANDLED ;
 scalar_t__ IRQ_NONE ;
 int PCC_ISR_MAX_LOOP ;
 int pcan_pccard_present (struct pcan_pccard*) ;
 scalar_t__ sja1000_interrupt (int,struct net_device*) ;

__attribute__((used)) static irqreturn_t pcan_isr(int irq, void *dev_id)
{
 struct pcan_pccard *card = dev_id;
 int irq_handled;


 for (irq_handled = 0; irq_handled < PCC_ISR_MAX_LOOP; irq_handled++) {

  int nothing_to_handle = 1;
  int i;


  for (i = 0; i < card->chan_count; i++) {
   struct net_device *netdev;





   if (!pcan_pccard_present(card)) {

    return IRQ_NONE;
   }





   netdev = card->channel[i].netdev;
   if (netdev &&
       sja1000_interrupt(irq, netdev) == IRQ_HANDLED)
    nothing_to_handle = 0;
  }

  if (nothing_to_handle)
   break;
 }

 return (irq_handled) ? IRQ_HANDLED : IRQ_NONE;
}
