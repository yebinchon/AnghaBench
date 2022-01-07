
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int dummy; } ;


 int ems_pcmcia_del_card (struct pcmcia_device*) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;

__attribute__((used)) static void ems_pcmcia_remove(struct pcmcia_device *dev)
{
 ems_pcmcia_del_card(dev);
 pcmcia_disable_device(dev);
}
