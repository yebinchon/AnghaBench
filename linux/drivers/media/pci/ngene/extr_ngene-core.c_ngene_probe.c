
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int dev; } ;
struct ngene_info {int name; } ;
struct ngene {int i2c_current_bus; struct ngene_info* card_info; struct pci_dev* pci_dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int cxd_attach (struct ngene*) ;
 int dev_info (int *,char*,int ) ;
 int init_channels (struct ngene*) ;
 int ngene_buffer_config (struct ngene*) ;
 int ngene_get_buffers (struct ngene*) ;
 int ngene_release_buffers (struct ngene*) ;
 int ngene_start (struct ngene*) ;
 int ngene_stop (struct ngene*) ;
 int pci_disable_device (struct pci_dev*) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,struct ngene*) ;
 struct ngene* vzalloc (int) ;

int ngene_probe(struct pci_dev *pci_dev, const struct pci_device_id *id)
{
 struct ngene *dev;
 int stat = 0;

 if (pci_enable_device(pci_dev) < 0)
  return -ENODEV;

 dev = vzalloc(sizeof(struct ngene));
 if (dev == ((void*)0)) {
  stat = -ENOMEM;
  goto fail0;
 }

 dev->pci_dev = pci_dev;
 dev->card_info = (struct ngene_info *)id->driver_data;
 dev_info(&pci_dev->dev, "Found %s\n", dev->card_info->name);

 pci_set_drvdata(pci_dev, dev);


 stat = ngene_get_buffers(dev);
 if (stat < 0)
  goto fail1;
 stat = ngene_start(dev);
 if (stat < 0)
  goto fail1;

 cxd_attach(dev);

 stat = ngene_buffer_config(dev);
 if (stat < 0)
  goto fail1;


 dev->i2c_current_bus = -1;


 stat = init_channels(dev);
 if (stat < 0)
  goto fail2;

 return 0;

fail2:
 ngene_stop(dev);
fail1:
 ngene_release_buffers(dev);
fail0:
 pci_disable_device(pci_dev);
 return stat;
}
