
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct qlcnic_vport {int vlan_mode; int pvid; } ;
struct qlcnic_vf_info {struct qlcnic_adapter* adapter; struct qlcnic_vport* vp; } ;
struct qlcnic_sriov {int num_allowed_vlans; } ;
struct TYPE_4__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_2__ rsp; } ;
struct qlcnic_bc_trans {struct qlcnic_vf_info* vf; } ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct TYPE_3__ {struct qlcnic_sriov* sriov; } ;




 scalar_t__ qlcnic_84xx_check (struct qlcnic_adapter*) ;

__attribute__((used)) static int qlcnic_sriov_pf_get_acl_cmd(struct qlcnic_bc_trans *trans,
           struct qlcnic_cmd_args *cmd)
{
 struct qlcnic_vf_info *vf = trans->vf;
 struct qlcnic_vport *vp = vf->vp;
 u8 mode = vp->vlan_mode;
 struct qlcnic_adapter *adapter;
 struct qlcnic_sriov *sriov;

 adapter = vf->adapter;
 sriov = adapter->ahw->sriov;

 cmd->rsp.arg[0] |= 1 << 25;




 if (qlcnic_84xx_check(adapter) && mode == 128)
  return 0;

 switch (mode) {
 case 129:
  cmd->rsp.arg[1] = mode | 1 << 8;
  cmd->rsp.arg[2] = sriov->num_allowed_vlans << 16;
  break;
 case 128:
  cmd->rsp.arg[1] = mode | 1 << 8 | vp->pvid << 16;
  break;
 }

 return 0;
}
