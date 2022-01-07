
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlxsw_pci_queue_type_group {int count; } ;
struct mlxsw_pci {int dummy; } ;
typedef enum mlxsw_pci_queue_type { ____Placeholder_mlxsw_pci_queue_type } mlxsw_pci_queue_type ;


 struct mlxsw_pci_queue_type_group* mlxsw_pci_queue_type_group_get (struct mlxsw_pci*,int) ;

__attribute__((used)) static u8 __mlxsw_pci_queue_count(struct mlxsw_pci *mlxsw_pci,
      enum mlxsw_pci_queue_type q_type)
{
 struct mlxsw_pci_queue_type_group *queue_group;

 queue_group = mlxsw_pci_queue_type_group_get(mlxsw_pci, q_type);
 return queue_group->count;
}
