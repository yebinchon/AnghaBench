
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int irq; struct if_cs_card* priv; } ;
struct if_cs_card {scalar_t__ iobase; } ;


 int free_irq (int ,struct if_cs_card*) ;
 int ioport_unmap (scalar_t__) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;

__attribute__((used)) static void if_cs_release(struct pcmcia_device *p_dev)
{
 struct if_cs_card *card = p_dev->priv;

 free_irq(p_dev->irq, card);
 pcmcia_disable_device(p_dev);
 if (card->iobase)
  ioport_unmap(card->iobase);
}
