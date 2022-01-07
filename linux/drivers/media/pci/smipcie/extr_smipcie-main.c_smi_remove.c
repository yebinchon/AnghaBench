
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smi_dev {int lmmio; int * ts_port; TYPE_1__* info; TYPE_2__* pci_dev; } ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {int irq; } ;
struct TYPE_3__ {scalar_t__ ts_0; scalar_t__ ts_1; } ;


 int ALL_INT ;
 int MSI_INT_ENA_CLR ;
 int free_irq (int ,struct smi_dev*) ;
 int iounmap (int ) ;
 int kfree (struct smi_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_msi (TYPE_2__*) ;
 struct smi_dev* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int smi_i2c_exit (struct smi_dev*) ;
 int smi_ir_exit (struct smi_dev*) ;
 int smi_port_detach (int *) ;
 int smi_write (int ,int ) ;

__attribute__((used)) static void smi_remove(struct pci_dev *pdev)
{
 struct smi_dev *dev = pci_get_drvdata(pdev);

 smi_write(MSI_INT_ENA_CLR, ALL_INT);
 free_irq(dev->pci_dev->irq, dev);



 if (dev->info->ts_1)
  smi_port_detach(&dev->ts_port[1]);
 if (dev->info->ts_0)
  smi_port_detach(&dev->ts_port[0]);

 smi_ir_exit(dev);
 smi_i2c_exit(dev);
 iounmap(dev->lmmio);
 pci_set_drvdata(pdev, ((void*)0));
 pci_disable_device(pdev);
 kfree(dev);
}
