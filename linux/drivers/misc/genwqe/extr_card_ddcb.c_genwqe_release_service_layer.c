
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int irq; } ;
struct genwqe_dev {int queue; int * card_thread; struct pci_dev* pci_dev; } ;


 int ddcb_queue_initialized (int *) ;
 int free_ddcb_queue (struct genwqe_dev*,int *) ;
 int free_irq (int ,struct genwqe_dev*) ;
 int genwqe_reset_interrupt_capability (struct genwqe_dev*) ;
 int kthread_stop (int *) ;

int genwqe_release_service_layer(struct genwqe_dev *cd)
{
 struct pci_dev *pci_dev = cd->pci_dev;

 if (!ddcb_queue_initialized(&cd->queue))
  return 1;

 free_irq(pci_dev->irq, cd);
 genwqe_reset_interrupt_capability(cd);

 if (cd->card_thread != ((void*)0)) {
  kthread_stop(cd->card_thread);
  cd->card_thread = ((void*)0);
 }

 free_ddcb_queue(cd, &cd->queue);
 return 0;
}
