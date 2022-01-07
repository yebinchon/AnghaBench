
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_reset_cmd {void* retval_len16; void* op_to_write; } ;
struct adapter {int dummy; } ;
typedef int cmd ;


 int FW_CMD_OP_V (int ) ;
 int FW_CMD_WRITE_F ;
 int FW_LEN16 (struct fw_reset_cmd) ;
 int FW_RESET_CMD ;
 void* cpu_to_be32 (int) ;
 int memset (struct fw_reset_cmd*,int ,int) ;
 int t4vf_wr_mbox (struct adapter*,struct fw_reset_cmd*,int,int *) ;

int t4vf_fw_reset(struct adapter *adapter)
{
 struct fw_reset_cmd cmd;

 memset(&cmd, 0, sizeof(cmd));
 cmd.op_to_write = cpu_to_be32(FW_CMD_OP_V(FW_RESET_CMD) |
          FW_CMD_WRITE_F);
 cmd.retval_len16 = cpu_to_be32(FW_LEN16(cmd));
 return t4vf_wr_mbox(adapter, &cmd, sizeof(cmd), ((void*)0));
}
