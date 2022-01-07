
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cx8802_dev {TYPE_1__* pci; } ;
struct TYPE_2__ {int irq; } ;


 int cx8802_stop_dma (struct cx8802_dev*) ;
 int dprintk (int,char*) ;
 int free_irq (int ,struct cx8802_dev*) ;
 int pci_disable_device (TYPE_1__*) ;

__attribute__((used)) static void cx8802_fini_common(struct cx8802_dev *dev)
{
 dprintk(2, "\n");
 cx8802_stop_dma(dev);
 pci_disable_device(dev->pci);


 free_irq(dev->pci->irq, dev);
}
