
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_pci_queue {int num; } ;
struct mlxsw_pci {int core; } ;


 int mlxsw_cmd_hw2sw_sdq (int ,int ) ;

__attribute__((used)) static void mlxsw_pci_sdq_fini(struct mlxsw_pci *mlxsw_pci,
          struct mlxsw_pci_queue *q)
{
 mlxsw_cmd_hw2sw_sdq(mlxsw_pci->core, q->num);
}
