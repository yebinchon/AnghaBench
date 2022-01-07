
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ v; } ;
struct TYPE_4__ {TYPE_1__ cq; } ;
struct mlxsw_pci_queue {TYPE_2__ u; } ;


 int MLXSW_PCI_CQE01_SIZE ;
 int MLXSW_PCI_CQE2_SIZE ;
 scalar_t__ MLXSW_PCI_CQE_V2 ;

__attribute__((used)) static u8 mlxsw_pci_cq_elem_size(const struct mlxsw_pci_queue *q)
{
 return q->u.cq.v == MLXSW_PCI_CQE_V2 ? MLXSW_PCI_CQE2_SIZE :
            MLXSW_PCI_CQE01_SIZE;
}
