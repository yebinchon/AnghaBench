
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct pci_dev {TYPE_1__ dev; } ;
struct cmodio_device {int ctrl; } ;


 int cmodio_sysfs_attr_group ;
 int iounmap (int ) ;
 int mfd_remove_devices (TYPE_1__*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct cmodio_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void cmodio_pci_remove(struct pci_dev *dev)
{
 struct cmodio_device *priv = pci_get_drvdata(dev);

 mfd_remove_devices(&dev->dev);
 sysfs_remove_group(&dev->dev.kobj, &cmodio_sysfs_attr_group);
 iounmap(priv->ctrl);
 pci_release_regions(dev);
 pci_disable_device(dev);
}
