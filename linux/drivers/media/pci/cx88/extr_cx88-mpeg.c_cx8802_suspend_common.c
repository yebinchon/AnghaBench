
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_3__ {int disabled; } ;
struct TYPE_4__ {int active; } ;
struct cx8802_dev {TYPE_1__ state; int core; int slock; TYPE_2__ mpegq; } ;
typedef int pm_message_t ;


 int cx8802_stop_dma (struct cx8802_dev*) ;
 int cx88_shutdown (int ) ;
 int dprintk (int,char*) ;
 int list_empty (int *) ;
 int pci_choose_state (struct pci_dev*,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 struct cx8802_dev* pci_get_drvdata (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 scalar_t__ pci_set_power_state (struct pci_dev*,int ) ;
 int pr_info (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cx8802_suspend_common(struct pci_dev *pci_dev, pm_message_t state)
{
 struct cx8802_dev *dev = pci_get_drvdata(pci_dev);
 unsigned long flags;


 spin_lock_irqsave(&dev->slock, flags);
 if (!list_empty(&dev->mpegq.active)) {
  dprintk(2, "suspend\n");
  pr_info("suspend mpeg\n");
  cx8802_stop_dma(dev);
 }
 spin_unlock_irqrestore(&dev->slock, flags);


 cx88_shutdown(dev->core);

 pci_save_state(pci_dev);
 if (pci_set_power_state(pci_dev,
    pci_choose_state(pci_dev, state)) != 0) {
  pci_disable_device(pci_dev);
  dev->state.disabled = 1;
 }
 return 0;
}
