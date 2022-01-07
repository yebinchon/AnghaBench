
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int irq; } ;
struct cx88_core {int * v4ldev; scalar_t__ ir; int * kthread; } ;
struct cx8800_dev {int pci; struct cx88_core* core; } ;


 int cx8800_unregister_video (struct cx8800_dev*) ;
 int cx88_core_put (struct cx88_core*,int ) ;
 int cx88_ir_stop (struct cx88_core*) ;
 int cx88_shutdown (struct cx88_core*) ;
 int free_irq (int ,struct cx8800_dev*) ;
 int kfree (struct cx8800_dev*) ;
 int kthread_stop (int *) ;
 int pci_disable_device (struct pci_dev*) ;
 struct cx8800_dev* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void cx8800_finidev(struct pci_dev *pci_dev)
{
 struct cx8800_dev *dev = pci_get_drvdata(pci_dev);
 struct cx88_core *core = dev->core;


 if (core->kthread) {
  kthread_stop(core->kthread);
  core->kthread = ((void*)0);
 }

 if (core->ir)
  cx88_ir_stop(core);

 cx88_shutdown(core);



 free_irq(pci_dev->irq, dev);
 cx8800_unregister_video(dev);
 pci_disable_device(pci_dev);

 core->v4ldev = ((void*)0);


 cx88_core_put(core, dev->pci);
 kfree(dev);
}
