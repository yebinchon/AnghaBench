
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {struct pcan_pccard* priv; int irq; } ;
struct pcan_pccard {int ioport_addr; } ;


 int free_irq (int ,struct pcan_pccard*) ;
 int ioport_unmap (int ) ;
 int kfree (struct pcan_pccard*) ;
 int pcan_free_channels (struct pcan_pccard*) ;
 int pcan_stop_led_timer (struct pcan_pccard*) ;

__attribute__((used)) static void pcan_free(struct pcmcia_device *pdev)
{
 struct pcan_pccard *card = pdev->priv;

 if (!card)
  return;

 free_irq(pdev->irq, card);
 pcan_stop_led_timer(card);

 pcan_free_channels(card);

 ioport_unmap(card->ioport_addr);

 kfree(card);
 pdev->priv = ((void*)0);
}
