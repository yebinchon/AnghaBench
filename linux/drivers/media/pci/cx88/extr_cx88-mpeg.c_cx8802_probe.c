
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int mpeg; } ;
struct cx88_core {struct cx8802_dev* dvbdev; TYPE_1__ board; } ;
struct cx8802_dev {int devlist; int drvlist; struct cx88_core* core; struct pci_dev* pci; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int cx8802_devlist ;
 int cx8802_init_common (struct cx8802_dev*) ;
 int cx8802_mutex ;
 struct cx88_core* cx88_core_get (struct pci_dev*) ;
 int cx88_core_put (struct cx88_core*,struct pci_dev*) ;
 int kfree (struct cx8802_dev*) ;
 struct cx8802_dev* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*) ;
 int request_modules (struct cx8802_dev*) ;

__attribute__((used)) static int cx8802_probe(struct pci_dev *pci_dev,
   const struct pci_device_id *pci_id)
{
 struct cx8802_dev *dev;
 struct cx88_core *core;
 int err;


 core = cx88_core_get(pci_dev);
 if (!core)
  return -EINVAL;

 pr_info("cx2388x 8802 Driver Manager\n");

 err = -ENODEV;
 if (!core->board.mpeg)
  goto fail_core;

 err = -ENOMEM;
 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev)
  goto fail_core;
 dev->pci = pci_dev;
 dev->core = core;


 core->dvbdev = dev;

 err = cx8802_init_common(dev);
 if (err != 0)
  goto fail_dev;

 INIT_LIST_HEAD(&dev->drvlist);
 mutex_lock(&cx8802_mutex);
 list_add_tail(&dev->devlist, &cx8802_devlist);
 mutex_unlock(&cx8802_mutex);


 request_modules(dev);
 return 0;

 fail_dev:
 kfree(dev);
 fail_core:
 core->dvbdev = ((void*)0);
 cx88_core_put(core, pci_dev);
 return err;
}
