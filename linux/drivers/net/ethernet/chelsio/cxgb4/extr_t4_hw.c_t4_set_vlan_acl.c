
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlan_cmd ;
typedef scalar_t__ u16 ;
struct fw_acl_vlan_cmd {int dropnovlan_fm; int nvlan; int * vlanid; void* en_to_len16; void* op_to_vfn; } ;
struct adapter {int mbox; int pf; } ;


 int FW_ACL_VLAN_CMD ;
 int FW_ACL_VLAN_CMD_DROPNOVLAN_F ;
 unsigned int FW_ACL_VLAN_CMD_EN_F ;
 int FW_ACL_VLAN_CMD_FM_F ;
 unsigned int FW_ACL_VLAN_CMD_PFN_V (int ) ;
 unsigned int FW_ACL_VLAN_CMD_VFN_V (unsigned int) ;
 unsigned int FW_CMD_EXEC_F ;
 unsigned int FW_CMD_OP_V (int ) ;
 unsigned int FW_CMD_REQUEST_F ;
 unsigned int FW_CMD_WRITE_F ;
 unsigned int FW_LEN16 (struct fw_acl_vlan_cmd) ;
 int cpu_to_be16 (scalar_t__) ;
 void* cpu_to_be32 (unsigned int) ;
 int memset (struct fw_acl_vlan_cmd*,int ,int) ;
 int t4_wr_mbox (struct adapter*,int ,struct fw_acl_vlan_cmd*,int,int *) ;

int t4_set_vlan_acl(struct adapter *adap, unsigned int mbox, unsigned int vf,
      u16 vlan)
{
 struct fw_acl_vlan_cmd vlan_cmd;
 unsigned int enable;

 enable = (vlan ? FW_ACL_VLAN_CMD_EN_F : 0);
 memset(&vlan_cmd, 0, sizeof(vlan_cmd));
 vlan_cmd.op_to_vfn = cpu_to_be32(FW_CMD_OP_V(FW_ACL_VLAN_CMD) |
      FW_CMD_REQUEST_F |
      FW_CMD_WRITE_F |
      FW_CMD_EXEC_F |
      FW_ACL_VLAN_CMD_PFN_V(adap->pf) |
      FW_ACL_VLAN_CMD_VFN_V(vf));
 vlan_cmd.en_to_len16 = cpu_to_be32(enable | FW_LEN16(vlan_cmd));

 vlan_cmd.dropnovlan_fm = (enable
      ? (FW_ACL_VLAN_CMD_DROPNOVLAN_F |
         FW_ACL_VLAN_CMD_FM_F) : 0);
 if (enable != 0) {
  vlan_cmd.nvlan = 1;
  vlan_cmd.vlanid[0] = cpu_to_be16(vlan);
 }

 return t4_wr_mbox(adap, adap->mbox, &vlan_cmd, sizeof(vlan_cmd), ((void*)0));
}
