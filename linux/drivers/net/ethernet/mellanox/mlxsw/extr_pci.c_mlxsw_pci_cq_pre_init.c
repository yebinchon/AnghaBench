
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ v; } ;
struct TYPE_4__ {TYPE_1__ cq; } ;
struct mlxsw_pci_queue {scalar_t__ num; TYPE_2__ u; } ;
struct mlxsw_pci {scalar_t__ max_cqe_ver; scalar_t__ num_sdq_cqs; } ;


 scalar_t__ MLXSW_PCI_CQE_V1 ;
 scalar_t__ MLXSW_PCI_CQE_V2 ;

__attribute__((used)) static void mlxsw_pci_cq_pre_init(struct mlxsw_pci *mlxsw_pci,
      struct mlxsw_pci_queue *q)
{
 q->u.cq.v = mlxsw_pci->max_cqe_ver;


 if (q->u.cq.v == MLXSW_PCI_CQE_V2 &&
     q->num < mlxsw_pci->num_sdq_cqs)
  q->u.cq.v = MLXSW_PCI_CQE_V1;
}
