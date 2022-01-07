
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ en; } ;
struct ngene {TYPE_1__ ci; int * channel; int event_tasklet; } ;


 int MAX_STREAM ;
 int cxd_detach (struct ngene*) ;
 int ngene_release_buffers (struct ngene*) ;
 int ngene_stop (struct ngene*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct ngene* pci_get_drvdata (struct pci_dev*) ;
 int release_channel (int *) ;
 int tasklet_kill (int *) ;

void ngene_remove(struct pci_dev *pdev)
{
 struct ngene *dev = pci_get_drvdata(pdev);
 int i;

 tasklet_kill(&dev->event_tasklet);
 for (i = MAX_STREAM - 1; i >= 0; i--)
  release_channel(&dev->channel[i]);
 if (dev->ci.en)
  cxd_detach(dev);
 ngene_stop(dev);
 ngene_release_buffers(dev);
 pci_disable_device(pdev);
}
