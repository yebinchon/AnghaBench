
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ddb {int dummy; } ;


 int ddb_buffers_free (struct ddb*) ;
 int ddb_device_destroy (struct ddb*) ;
 int ddb_i2c_release (struct ddb*) ;
 int ddb_irq_exit (struct ddb*) ;
 int ddb_msi_exit (struct ddb*) ;
 int ddb_ports_detach (struct ddb*) ;
 int ddb_ports_release (struct ddb*) ;
 int ddb_unmap (struct ddb*) ;
 int pci_disable_device (struct pci_dev*) ;
 scalar_t__ pci_get_drvdata (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;

__attribute__((used)) static void ddb_remove(struct pci_dev *pdev)
{
 struct ddb *dev = (struct ddb *)pci_get_drvdata(pdev);

 ddb_device_destroy(dev);
 ddb_ports_detach(dev);
 ddb_i2c_release(dev);

 ddb_irq_exit(dev);
 ddb_msi_exit(dev);
 ddb_ports_release(dev);
 ddb_buffers_free(dev);

 ddb_unmap(dev);
 pci_set_drvdata(pdev, ((void*)0));
 pci_disable_device(pdev);
}
