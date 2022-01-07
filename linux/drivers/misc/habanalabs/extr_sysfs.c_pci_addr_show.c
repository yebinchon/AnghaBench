
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hl_device {TYPE_1__* pdev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int number; } ;
struct TYPE_3__ {int devfn; TYPE_2__* bus; } ;


 int PCI_FUNC (int ) ;
 int PCI_SLOT (int ) ;
 struct hl_device* dev_get_drvdata (struct device*) ;
 int pci_domain_nr (TYPE_2__*) ;
 int sprintf (char*,char*,int,int,int,int) ;

__attribute__((used)) static ssize_t pci_addr_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct hl_device *hdev = dev_get_drvdata(dev);

 return sprintf(buf, "%04x:%02x:%02x.%x\n",
   pci_domain_nr(hdev->pdev->bus),
   hdev->pdev->bus->number,
   PCI_SLOT(hdev->pdev->devfn),
   PCI_FUNC(hdev->pdev->devfn));
}
