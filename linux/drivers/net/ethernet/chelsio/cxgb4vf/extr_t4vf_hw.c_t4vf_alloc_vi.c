
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_vi_cmd {int type_viid; int portid_pkd; void* alloc_to_len16; void* op_to_vfn; } ;
struct adapter {int dummy; } ;
typedef int cmd ;


 int FW_CMD_EXEC_F ;
 int FW_CMD_OP_V (int ) ;
 int FW_CMD_REQUEST_F ;
 int FW_CMD_WRITE_F ;
 int FW_LEN16 (struct fw_vi_cmd) ;
 int FW_VI_CMD ;
 int FW_VI_CMD_ALLOC_F ;
 int FW_VI_CMD_PORTID_V (int) ;
 int FW_VI_CMD_VIID_G (int ) ;
 int be16_to_cpu (int ) ;
 void* cpu_to_be32 (int) ;
 int memset (struct fw_vi_cmd*,int ,int) ;
 int t4vf_wr_mbox (struct adapter*,struct fw_vi_cmd*,int,struct fw_vi_cmd*) ;

int t4vf_alloc_vi(struct adapter *adapter, int port_id)
{
 struct fw_vi_cmd cmd, rpl;
 int v;





 memset(&cmd, 0, sizeof(cmd));
 cmd.op_to_vfn = cpu_to_be32(FW_CMD_OP_V(FW_VI_CMD) |
        FW_CMD_REQUEST_F |
        FW_CMD_WRITE_F |
        FW_CMD_EXEC_F);
 cmd.alloc_to_len16 = cpu_to_be32(FW_LEN16(cmd) |
      FW_VI_CMD_ALLOC_F);
 cmd.portid_pkd = FW_VI_CMD_PORTID_V(port_id);
 v = t4vf_wr_mbox(adapter, &cmd, sizeof(cmd), &rpl);
 if (v)
  return v;

 return FW_VI_CMD_VIID_G(be16_to_cpu(rpl.type_viid));
}
