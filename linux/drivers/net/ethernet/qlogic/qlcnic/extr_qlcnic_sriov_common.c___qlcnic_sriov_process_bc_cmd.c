
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_1__ rsp; } ;
struct qlcnic_bc_trans {int dummy; } ;
struct qlcnic_adapter {int dummy; } ;


 scalar_t__ qlcnic_sriov_pf_check (struct qlcnic_adapter*) ;
 int qlcnic_sriov_pf_process_bc_cmd (struct qlcnic_adapter*,struct qlcnic_bc_trans*,struct qlcnic_cmd_args*) ;

__attribute__((used)) static void __qlcnic_sriov_process_bc_cmd(struct qlcnic_adapter *adapter,
       struct qlcnic_bc_trans *trans,
       struct qlcnic_cmd_args *cmd)
{






 cmd->rsp.arg[0] |= (0x9 << 25);
 return;
}
