
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_pci_queue_type_group {int dummy; } ;
struct mlxsw_pci {struct mlxsw_pci_queue_type_group* queues; } ;
typedef enum mlxsw_pci_queue_type { ____Placeholder_mlxsw_pci_queue_type } mlxsw_pci_queue_type ;



__attribute__((used)) static struct mlxsw_pci_queue_type_group *
mlxsw_pci_queue_type_group_get(struct mlxsw_pci *mlxsw_pci,
          enum mlxsw_pci_queue_type q_type)
{
 return &mlxsw_pci->queues[q_type];
}
