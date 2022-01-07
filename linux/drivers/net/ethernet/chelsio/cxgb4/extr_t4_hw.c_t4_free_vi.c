
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_vi_cmd {int type_viid; void* alloc_to_len16; void* op_to_vfn; } ;
struct adapter {int dummy; } ;
typedef int c ;


 int FW_CMD_EXEC_F ;
 int FW_CMD_OP_V (int ) ;
 int FW_CMD_REQUEST_F ;
 int FW_LEN16 (struct fw_vi_cmd) ;
 int FW_VI_CMD ;
 int FW_VI_CMD_FREE_F ;
 int FW_VI_CMD_PFN_V (unsigned int) ;
 int FW_VI_CMD_VFN_V (unsigned int) ;
 int FW_VI_CMD_VIID_V (unsigned int) ;
 int cpu_to_be16 (int ) ;
 void* cpu_to_be32 (int) ;
 int memset (struct fw_vi_cmd*,int ,int) ;
 int t4_wr_mbox (struct adapter*,unsigned int,struct fw_vi_cmd*,int,struct fw_vi_cmd*) ;

int t4_free_vi(struct adapter *adap, unsigned int mbox, unsigned int pf,
        unsigned int vf, unsigned int viid)
{
 struct fw_vi_cmd c;

 memset(&c, 0, sizeof(c));
 c.op_to_vfn = cpu_to_be32(FW_CMD_OP_V(FW_VI_CMD) |
      FW_CMD_REQUEST_F |
      FW_CMD_EXEC_F |
      FW_VI_CMD_PFN_V(pf) |
      FW_VI_CMD_VFN_V(vf));
 c.alloc_to_len16 = cpu_to_be32(FW_VI_CMD_FREE_F | FW_LEN16(c));
 c.type_viid = cpu_to_be16(FW_VI_CMD_VIID_V(viid));

 return t4_wr_mbox(adap, mbox, &c, sizeof(c), &c);
}
