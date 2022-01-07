
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmciamtd_dev {int * win_base; } ;
struct pcmcia_device {TYPE_1__** resource; struct pcmciamtd_dev* priv; } ;
struct TYPE_2__ {scalar_t__ end; } ;


 int iounmap (int *) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;
 int pr_debug (char*,struct pcmcia_device*) ;

__attribute__((used)) static void pcmciamtd_release(struct pcmcia_device *link)
{
 struct pcmciamtd_dev *dev = link->priv;

 pr_debug("link = 0x%p\n", link);

 if (link->resource[2]->end) {
  if(dev->win_base) {
   iounmap(dev->win_base);
   dev->win_base = ((void*)0);
  }
 }
 pcmcia_disable_device(link);
}
