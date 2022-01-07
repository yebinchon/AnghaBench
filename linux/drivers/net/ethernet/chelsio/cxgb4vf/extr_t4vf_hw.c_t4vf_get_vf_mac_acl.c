
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fw_acl_mac_cmd {unsigned int nmac; int macaddr0; int macaddr1; int macaddr2; int macaddr3; void* en_to_len16; void* op_to_vfn; } ;
struct adapter {int dummy; } ;
typedef int cmd ;


 int FW_ACL_MAC_CMD ;
 unsigned int FW_CMD_OP_V (int ) ;
 unsigned int FW_CMD_READ_F ;
 unsigned int FW_CMD_REQUEST_F ;
 scalar_t__ FW_LEN16 (struct fw_acl_mac_cmd) ;
 void* cpu_to_be32 (unsigned int) ;
 int memcpy (int *,int ,int) ;
 int memset (struct fw_acl_mac_cmd*,int ,int) ;
 int t4vf_wr_mbox (struct adapter*,struct fw_acl_mac_cmd*,int,struct fw_acl_mac_cmd*) ;

int t4vf_get_vf_mac_acl(struct adapter *adapter, unsigned int pf,
   unsigned int *naddr, u8 *addr)
{
 struct fw_acl_mac_cmd cmd;
 int ret;

 memset(&cmd, 0, sizeof(cmd));
 cmd.op_to_vfn = cpu_to_be32(FW_CMD_OP_V(FW_ACL_MAC_CMD) |
        FW_CMD_REQUEST_F |
        FW_CMD_READ_F);
 cmd.en_to_len16 = cpu_to_be32((unsigned int)FW_LEN16(cmd));
 ret = t4vf_wr_mbox(adapter, &cmd, sizeof(cmd), &cmd);
 if (ret)
  return ret;

 if (cmd.nmac < *naddr)
  *naddr = cmd.nmac;

 switch (pf) {
 case 3:
  memcpy(addr, cmd.macaddr3, sizeof(cmd.macaddr3));
  break;
 case 2:
  memcpy(addr, cmd.macaddr2, sizeof(cmd.macaddr2));
  break;
 case 1:
  memcpy(addr, cmd.macaddr1, sizeof(cmd.macaddr1));
  break;
 case 0:
  memcpy(addr, cmd.macaddr0, sizeof(cmd.macaddr0));
  break;
 }

 return ret;
}
