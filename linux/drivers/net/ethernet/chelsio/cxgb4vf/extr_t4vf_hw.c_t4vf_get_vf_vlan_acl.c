
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_acl_vlan_cmd {int * vlanid; int en_to_len16; int op_to_vfn; } ;
struct adapter {int dummy; } ;
typedef int cmd ;


 int FW_ACL_VLAN_CMD ;
 int FW_CMD_OP_V (int ) ;
 int FW_CMD_READ_F ;
 int FW_CMD_REQUEST_F ;
 scalar_t__ FW_LEN16 (struct fw_acl_vlan_cmd) ;
 int be16_to_cpu (int ) ;
 int cpu_to_be32 (unsigned int) ;
 int htonl (int) ;
 int t4vf_wr_mbox (struct adapter*,struct fw_acl_vlan_cmd*,int,struct fw_acl_vlan_cmd*) ;

int t4vf_get_vf_vlan_acl(struct adapter *adapter)
{
 struct fw_acl_vlan_cmd cmd;
 int vlan = 0;
 int ret = 0;

 cmd.op_to_vfn = htonl(FW_CMD_OP_V(FW_ACL_VLAN_CMD) |
         FW_CMD_REQUEST_F | FW_CMD_READ_F);


 cmd.en_to_len16 = cpu_to_be32((unsigned int)FW_LEN16(cmd));

 ret = t4vf_wr_mbox(adapter, &cmd, sizeof(cmd), &cmd);

 if (!ret)
  vlan = be16_to_cpu(cmd.vlanid[0]);

 return vlan;
}
