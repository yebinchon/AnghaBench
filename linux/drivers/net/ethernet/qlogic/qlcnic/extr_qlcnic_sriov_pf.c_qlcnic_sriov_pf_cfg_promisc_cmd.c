
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_vf_info {TYPE_1__* vp; struct qlcnic_adapter* adapter; } ;
struct TYPE_4__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_2__ req; } ;
struct qlcnic_bc_trans {struct qlcnic_vf_info* vf; } ;
struct qlcnic_adapter {int dummy; } ;
struct TYPE_3__ {int handle; } ;


 int BIT_31 ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;

__attribute__((used)) static int qlcnic_sriov_pf_cfg_promisc_cmd(struct qlcnic_bc_trans *trans,
        struct qlcnic_cmd_args *cmd)
{
 struct qlcnic_vf_info *vf = trans->vf;
 struct qlcnic_adapter *adapter = vf->adapter;
 int err;

 cmd->req.arg[1] |= vf->vp->handle << 16;
 cmd->req.arg[1] |= BIT_31;
 err = qlcnic_issue_cmd(adapter, cmd);
 return err;
}
