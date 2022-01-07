
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct qlcnic_vport {int handle; scalar_t__ vlan_mode; int pvid; } ;
struct qlcnic_vf_info {struct qlcnic_vport* vp; } ;
struct TYPE_2__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;
struct qlcnic_adapter {int dummy; } ;


 int BIT_31 ;
 int BIT_8 ;
 int EINVAL ;
 int QLCNIC_MAC_ADD ;
 int QLCNIC_MAC_VLAN_ADD ;
 int QLCNIC_MAC_VLAN_DEL ;
 scalar_t__ QLC_PVID_MODE ;

__attribute__((used)) static int qlcnic_sriov_validate_cfg_macvlan(struct qlcnic_adapter *adapter,
          struct qlcnic_vf_info *vf,
          struct qlcnic_cmd_args *cmd)
{
 struct qlcnic_vport *vp = vf->vp;
 u8 op, new_op;

 if (!(cmd->req.arg[1] & BIT_8))
  return -EINVAL;

 cmd->req.arg[1] |= (vf->vp->handle << 16);
 cmd->req.arg[1] |= BIT_31;

 if (vp->vlan_mode == QLC_PVID_MODE) {
  op = cmd->req.arg[1] & 0x7;
  cmd->req.arg[1] &= ~0x7;
  new_op = (op == QLCNIC_MAC_ADD || op == QLCNIC_MAC_VLAN_ADD) ?
    QLCNIC_MAC_VLAN_ADD : QLCNIC_MAC_VLAN_DEL;
  cmd->req.arg[3] |= vp->pvid << 16;
  cmd->req.arg[1] |= new_op;
 }

 return 0;
}
