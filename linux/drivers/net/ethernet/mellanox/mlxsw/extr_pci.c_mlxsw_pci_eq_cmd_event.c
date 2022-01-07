
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int out_param; int status; } ;
struct TYPE_4__ {int wait_done; int wait; TYPE_1__ comp; } ;
struct mlxsw_pci {TYPE_2__ cmd; } ;


 scalar_t__ mlxsw_pci_eqe_cmd_out_param_h_get (char*) ;
 int mlxsw_pci_eqe_cmd_out_param_l_get (char*) ;
 int mlxsw_pci_eqe_cmd_status_get (char*) ;
 int wake_up (int *) ;

__attribute__((used)) static void mlxsw_pci_eq_cmd_event(struct mlxsw_pci *mlxsw_pci, char *eqe)
{
 mlxsw_pci->cmd.comp.status = mlxsw_pci_eqe_cmd_status_get(eqe);
 mlxsw_pci->cmd.comp.out_param =
  ((u64) mlxsw_pci_eqe_cmd_out_param_h_get(eqe)) << 32 |
  mlxsw_pci_eqe_cmd_out_param_l_get(eqe);
 mlxsw_pci->cmd.wait_done = 1;
 wake_up(&mlxsw_pci->cmd.wait);
}
