
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlxsw_pci_queue {int dummy; } ;
struct mlxsw_pci {int dummy; } ;


 int MLXSW_PCI_QUEUE_TYPE_EQ ;
 struct mlxsw_pci_queue* __mlxsw_pci_queue_get (struct mlxsw_pci*,int ,int ) ;

__attribute__((used)) static struct mlxsw_pci_queue *mlxsw_pci_eq_get(struct mlxsw_pci *mlxsw_pci,
      u8 q_num)
{
 return __mlxsw_pci_queue_get(mlxsw_pci, MLXSW_PCI_QUEUE_TYPE_EQ, q_num);
}
