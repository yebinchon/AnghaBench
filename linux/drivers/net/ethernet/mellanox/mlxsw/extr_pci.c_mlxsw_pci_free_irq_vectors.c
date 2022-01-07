
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_pci {int pdev; } ;


 int pci_free_irq_vectors (int ) ;

__attribute__((used)) static void mlxsw_pci_free_irq_vectors(struct mlxsw_pci *mlxsw_pci)
{
 pci_free_irq_vectors(mlxsw_pci->pdev);
}
