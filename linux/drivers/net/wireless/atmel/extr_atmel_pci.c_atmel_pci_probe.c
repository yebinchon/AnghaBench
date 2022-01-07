
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; TYPE_1__* resource; int irq; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int start; } ;


 int ATMEL_FW_TYPE_506 ;
 int ENODEV ;
 struct net_device* init_atmel_card (int ,int ,int ,int *,int *,int *) ;
 int pci_disable_device (struct pci_dev*) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,struct net_device*) ;
 int pci_set_master (struct pci_dev*) ;

__attribute__((used)) static int atmel_pci_probe(struct pci_dev *pdev,
         const struct pci_device_id *pent)
{
 struct net_device *dev;

 if (pci_enable_device(pdev))
  return -ENODEV;

 pci_set_master(pdev);

 dev = init_atmel_card(pdev->irq, pdev->resource[1].start,
         ATMEL_FW_TYPE_506,
         &pdev->dev, ((void*)0), ((void*)0));
 if (!dev) {
  pci_disable_device(pdev);
  return -ENODEV;
 }

 pci_set_drvdata(pdev, dev);
 return 0;
}
