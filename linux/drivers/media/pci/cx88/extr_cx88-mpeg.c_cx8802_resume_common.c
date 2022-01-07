
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_4__ {int active; } ;
struct TYPE_3__ {int disabled; } ;
struct cx8802_dev {int slock; TYPE_2__ mpegq; int core; TYPE_1__ state; } ;


 int PCI_D0 ;
 int cx8802_restart_queue (struct cx8802_dev*,TYPE_2__*) ;
 int cx88_reset (int ) ;
 int list_empty (int *) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 struct cx8802_dev* pci_get_drvdata (struct pci_dev*) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int pr_err (char*) ;
 int pr_info (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cx8802_resume_common(struct pci_dev *pci_dev)
{
 struct cx8802_dev *dev = pci_get_drvdata(pci_dev);
 unsigned long flags;
 int err;

 if (dev->state.disabled) {
  err = pci_enable_device(pci_dev);
  if (err) {
   pr_err("can't enable device\n");
   return err;
  }
  dev->state.disabled = 0;
 }
 err = pci_set_power_state(pci_dev, PCI_D0);
 if (err) {
  pr_err("can't enable device\n");
  pci_disable_device(pci_dev);
  dev->state.disabled = 1;

  return err;
 }
 pci_restore_state(pci_dev);


 cx88_reset(dev->core);


 spin_lock_irqsave(&dev->slock, flags);
 if (!list_empty(&dev->mpegq.active)) {
  pr_info("resume mpeg\n");
  cx8802_restart_queue(dev, &dev->mpegq);
 }
 spin_unlock_irqrestore(&dev->slock, flags);

 return 0;
}
