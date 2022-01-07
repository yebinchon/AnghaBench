
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct ngene {int dummy; } ;


 int dev_info (int *,char*) ;
 int ngene_unlink (struct ngene*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct ngene* pci_get_drvdata (struct pci_dev*) ;
 int shutdown_workaround ;

void ngene_shutdown(struct pci_dev *pdev)
{
 struct ngene *dev = pci_get_drvdata(pdev);

 if (!dev || !shutdown_workaround)
  return;

 dev_info(&pdev->dev, "shutdown workaround...\n");
 ngene_unlink(dev);
 pci_disable_device(pdev);
}
