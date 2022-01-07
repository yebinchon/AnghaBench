
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nopoll; } ;
struct mlxsw_pci {TYPE_1__ cmd; } ;


 int mlxsw_pci_cq_ops ;
 int mlxsw_pci_eq_ops ;
 int mlxsw_pci_queue_group_fini (struct mlxsw_pci*,int *) ;
 int mlxsw_pci_rdq_ops ;
 int mlxsw_pci_sdq_ops ;

__attribute__((used)) static void mlxsw_pci_aqs_fini(struct mlxsw_pci *mlxsw_pci)
{
 mlxsw_pci->cmd.nopoll = 0;
 mlxsw_pci_queue_group_fini(mlxsw_pci, &mlxsw_pci_rdq_ops);
 mlxsw_pci_queue_group_fini(mlxsw_pci, &mlxsw_pci_sdq_ops);
 mlxsw_pci_queue_group_fini(mlxsw_pci, &mlxsw_pci_cq_ops);
 mlxsw_pci_queue_group_fini(mlxsw_pci, &mlxsw_pci_eq_ops);
}
