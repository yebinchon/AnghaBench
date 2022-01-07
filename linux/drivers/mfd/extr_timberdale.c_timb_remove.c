
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timberdale_device {int ctl_mapbase; int ctl_membase; } ;
struct pci_dev {int dev; } ;


 int CHIPCTLSIZE ;
 int dev_attr_fw_ver ;
 int device_remove_file (int *,int *) ;
 int iounmap (int ) ;
 int kfree (struct timberdale_device*) ;
 int mfd_remove_devices (int *) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_msix (struct pci_dev*) ;
 struct timberdale_device* pci_get_drvdata (struct pci_dev*) ;
 int release_mem_region (int ,int ) ;

__attribute__((used)) static void timb_remove(struct pci_dev *dev)
{
 struct timberdale_device *priv = pci_get_drvdata(dev);

 mfd_remove_devices(&dev->dev);

 device_remove_file(&dev->dev, &dev_attr_fw_ver);

 iounmap(priv->ctl_membase);
 release_mem_region(priv->ctl_mapbase, CHIPCTLSIZE);

 pci_disable_msix(dev);
 pci_disable_device(dev);
 kfree(priv);
}
