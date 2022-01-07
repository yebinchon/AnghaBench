
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct qlcnic_vport {int* mac; } ;
struct qlcnic_vf_info {int pci_func; struct qlcnic_vport* vp; } ;
struct qlcnic_macvlan_mbx {int mac_addr0; int mac_addr1; int mac_addr2; int mac_addr3; int mac_addr4; int mac_addr5; scalar_t__ vlan; } ;
struct TYPE_2__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; int type; } ;
struct qlcnic_adapter {int dummy; } ;


 int BIT_31 ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int QLCNIC_CMD_CONFIG_MAC_VLAN ;
 int QLCNIC_MAC_ADD ;
 int QLCNIC_MAC_VLAN_ADD ;
 int QLCNIC_MAC_VLAN_DEL ;
 int QLC_83XX_MBX_CMD_NO_WAIT ;
 int kfree (struct qlcnic_cmd_args*) ;
 struct qlcnic_cmd_args* kzalloc (int,int ) ;
 int memcpy (int*,struct qlcnic_macvlan_mbx*,int) ;
 int qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;
 int qlcnic_sriov_pf_get_vport_handle (struct qlcnic_adapter*,int ) ;

__attribute__((used)) static int qlcnic_sriov_cfg_vf_def_mac(struct qlcnic_adapter *adapter,
           struct qlcnic_vf_info *vf,
           u16 vlan, u8 op)
{
 struct qlcnic_cmd_args *cmd;
 struct qlcnic_macvlan_mbx mv;
 struct qlcnic_vport *vp;
 u8 *addr;
 int err;
 u32 *buf;
 int vpid;

 vp = vf->vp;

 cmd = kzalloc(sizeof(*cmd), GFP_ATOMIC);
 if (!cmd)
  return -ENOMEM;

 err = qlcnic_alloc_mbx_args(cmd, adapter, QLCNIC_CMD_CONFIG_MAC_VLAN);
 if (err)
  goto free_cmd;

 cmd->type = QLC_83XX_MBX_CMD_NO_WAIT;
 vpid = qlcnic_sriov_pf_get_vport_handle(adapter, vf->pci_func);
 if (vpid < 0) {
  err = -EINVAL;
  goto free_args;
 }

 if (vlan)
  op = ((op == QLCNIC_MAC_ADD || op == QLCNIC_MAC_VLAN_ADD) ?
        QLCNIC_MAC_VLAN_ADD : QLCNIC_MAC_VLAN_DEL);

 cmd->req.arg[1] = op | (1 << 8) | (3 << 6);
 cmd->req.arg[1] |= ((vpid & 0xffff) << 16) | BIT_31;

 addr = vp->mac;
 mv.vlan = vlan;
 mv.mac_addr0 = addr[0];
 mv.mac_addr1 = addr[1];
 mv.mac_addr2 = addr[2];
 mv.mac_addr3 = addr[3];
 mv.mac_addr4 = addr[4];
 mv.mac_addr5 = addr[5];
 buf = &cmd->req.arg[2];
 memcpy(buf, &mv, sizeof(struct qlcnic_macvlan_mbx));

 err = qlcnic_issue_cmd(adapter, cmd);

 if (!err)
  return err;

free_args:
 qlcnic_free_mbx_args(cmd);
free_cmd:
 kfree(cmd);
 return err;
}
