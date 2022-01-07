
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_vi_cmd {int type_viid; void* alloc_to_len16; void* op_to_vfn; } ;
struct adapter {int dummy; } ;
typedef int cmd ;


 int FW_CMD_EXEC_F ;
 int FW_CMD_OP_V (int ) ;
 int FW_CMD_REQUEST_F ;
 int FW_LEN16 (struct fw_vi_cmd) ;
 int FW_VI_CMD ;
 int FW_VI_CMD_FREE_F ;
 int FW_VI_CMD_VIID_V (int) ;
 int cpu_to_be16 (int ) ;
 void* cpu_to_be32 (int) ;
 int memset (struct fw_vi_cmd*,int ,int) ;
 int t4vf_wr_mbox (struct adapter*,struct fw_vi_cmd*,int,int *) ;

int t4vf_free_vi(struct adapter *adapter, int viid)
{
 struct fw_vi_cmd cmd;




 memset(&cmd, 0, sizeof(cmd));
 cmd.op_to_vfn = cpu_to_be32(FW_CMD_OP_V(FW_VI_CMD) |
        FW_CMD_REQUEST_F |
        FW_CMD_EXEC_F);
 cmd.alloc_to_len16 = cpu_to_be32(FW_LEN16(cmd) |
      FW_VI_CMD_FREE_F);
 cmd.type_viid = cpu_to_be16(FW_VI_CMD_VIID_V(viid));
 return t4vf_wr_mbox(adapter, &cmd, sizeof(cmd), ((void*)0));
}
