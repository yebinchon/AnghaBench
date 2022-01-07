
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlxsw_pci {int dummy; } ;


 int MLXSW_PCI_QUEUE_TYPE_SDQ ;
 int __mlxsw_pci_queue_count (struct mlxsw_pci*,int ) ;

__attribute__((used)) static u8 mlxsw_pci_sdq_count(struct mlxsw_pci *mlxsw_pci)
{
 return __mlxsw_pci_queue_count(mlxsw_pci, MLXSW_PCI_QUEUE_TYPE_SDQ);
}
