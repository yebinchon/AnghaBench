
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_pci_queue {size_t type; int num; } ;
struct mlxsw_pci {int doorbell_offset; } ;


 int DOORBELL (int ,int ,int ) ;
 int * mlxsw_pci_doorbell_arm_type_offset ;
 int mlxsw_pci_write32 (struct mlxsw_pci*,int ,int ) ;

__attribute__((used)) static void __mlxsw_pci_queue_doorbell_arm_set(struct mlxsw_pci *mlxsw_pci,
            struct mlxsw_pci_queue *q,
            u16 val)
{
 mlxsw_pci_write32(mlxsw_pci,
     DOORBELL(mlxsw_pci->doorbell_offset,
       mlxsw_pci_doorbell_arm_type_offset[q->type],
       q->num), val);
}
