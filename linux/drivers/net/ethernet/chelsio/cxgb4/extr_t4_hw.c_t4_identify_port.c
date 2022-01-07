
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_vi_enable_cmd {int blinkdur; void* ien_to_len16; void* op_to_viid; } ;
struct adapter {int dummy; } ;
typedef int c ;


 int FW_CMD_EXEC_F ;
 int FW_CMD_OP_V (int ) ;
 int FW_CMD_REQUEST_F ;
 int FW_LEN16 (struct fw_vi_enable_cmd) ;
 int FW_VI_ENABLE_CMD ;
 int FW_VI_ENABLE_CMD_LED_F ;
 int FW_VI_ENABLE_CMD_VIID_V (unsigned int) ;
 int cpu_to_be16 (unsigned int) ;
 void* cpu_to_be32 (int) ;
 int memset (struct fw_vi_enable_cmd*,int ,int) ;
 int t4_wr_mbox (struct adapter*,unsigned int,struct fw_vi_enable_cmd*,int,int *) ;

int t4_identify_port(struct adapter *adap, unsigned int mbox, unsigned int viid,
       unsigned int nblinks)
{
 struct fw_vi_enable_cmd c;

 memset(&c, 0, sizeof(c));
 c.op_to_viid = cpu_to_be32(FW_CMD_OP_V(FW_VI_ENABLE_CMD) |
       FW_CMD_REQUEST_F | FW_CMD_EXEC_F |
       FW_VI_ENABLE_CMD_VIID_V(viid));
 c.ien_to_len16 = cpu_to_be32(FW_VI_ENABLE_CMD_LED_F | FW_LEN16(c));
 c.blinkdur = cpu_to_be16(nblinks);
 return t4_wr_mbox(adap, mbox, &c, sizeof(c), ((void*)0));
}
