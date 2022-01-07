
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int in_mbox; int out_mbox; } ;
struct mlxsw_pci {TYPE_1__ cmd; int pdev; } ;


 int free_irq (int ,struct mlxsw_pci*) ;
 int mlxsw_pci_aqs_fini (struct mlxsw_pci*) ;
 int mlxsw_pci_free_irq_vectors (struct mlxsw_pci*) ;
 int mlxsw_pci_fw_area_fini (struct mlxsw_pci*) ;
 int mlxsw_pci_mbox_free (struct mlxsw_pci*,int *) ;
 int pci_irq_vector (int ,int ) ;

__attribute__((used)) static void mlxsw_pci_fini(void *bus_priv)
{
 struct mlxsw_pci *mlxsw_pci = bus_priv;

 free_irq(pci_irq_vector(mlxsw_pci->pdev, 0), mlxsw_pci);
 mlxsw_pci_aqs_fini(mlxsw_pci);
 mlxsw_pci_fw_area_fini(mlxsw_pci);
 mlxsw_pci_free_irq_vectors(mlxsw_pci);
 mlxsw_pci_mbox_free(mlxsw_pci, &mlxsw_pci->cmd.out_mbox);
 mlxsw_pci_mbox_free(mlxsw_pci, &mlxsw_pci->cmd.in_mbox);
}
