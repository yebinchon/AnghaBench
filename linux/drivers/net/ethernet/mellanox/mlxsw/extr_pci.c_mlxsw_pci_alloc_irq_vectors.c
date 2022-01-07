
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_pci {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int PCI_IRQ_MSIX ;
 int dev_err (int *,char*) ;
 int pci_alloc_irq_vectors (TYPE_1__*,int,int,int ) ;

__attribute__((used)) static int mlxsw_pci_alloc_irq_vectors(struct mlxsw_pci *mlxsw_pci)
{
 int err;

 err = pci_alloc_irq_vectors(mlxsw_pci->pdev, 1, 1, PCI_IRQ_MSIX);
 if (err < 0)
  dev_err(&mlxsw_pci->pdev->dev, "MSI-X init failed\n");
 return err;
}
