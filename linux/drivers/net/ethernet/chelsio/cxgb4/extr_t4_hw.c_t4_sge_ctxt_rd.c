
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int ctxt_data5; int ctxt_data4; int ctxt_data3; int ctxt_data2; int ctxt_data1; int ctxt_data0; void* physid; } ;
struct TYPE_4__ {TYPE_1__ idctxt; } ;
struct fw_ldst_cmd {TYPE_2__ u; void* cycles_to_len16; void* op_to_addrspace; } ;
struct adapter {int dummy; } ;
typedef enum ctxt_type { ____Placeholder_ctxt_type } ctxt_type ;
typedef int c ;


 int CTXT_FLM ;
 unsigned int FW_CMD_OP_V (int ) ;
 unsigned int FW_CMD_READ_F ;
 unsigned int FW_CMD_REQUEST_F ;
 int FW_LDST_ADDRSPC_SGE_CONMC ;
 int FW_LDST_ADDRSPC_SGE_FLMC ;
 int FW_LDST_CMD ;
 unsigned int FW_LDST_CMD_ADDRSPACE_V (int) ;
 unsigned int FW_LEN16 (struct fw_ldst_cmd) ;
 int be32_to_cpu (int ) ;
 void* cpu_to_be32 (unsigned int) ;
 int memset (struct fw_ldst_cmd*,int ,int) ;
 int t4_wr_mbox (struct adapter*,unsigned int,struct fw_ldst_cmd*,int,struct fw_ldst_cmd*) ;

int t4_sge_ctxt_rd(struct adapter *adap, unsigned int mbox, unsigned int cid,
     enum ctxt_type ctype, u32 *data)
{
 struct fw_ldst_cmd c;
 int ret;

 if (ctype == CTXT_FLM)
  ret = FW_LDST_ADDRSPC_SGE_FLMC;
 else
  ret = FW_LDST_ADDRSPC_SGE_CONMC;

 memset(&c, 0, sizeof(c));
 c.op_to_addrspace = cpu_to_be32(FW_CMD_OP_V(FW_LDST_CMD) |
     FW_CMD_REQUEST_F | FW_CMD_READ_F |
     FW_LDST_CMD_ADDRSPACE_V(ret));
 c.cycles_to_len16 = cpu_to_be32(FW_LEN16(c));
 c.u.idctxt.physid = cpu_to_be32(cid);

 ret = t4_wr_mbox(adap, mbox, &c, sizeof(c), &c);
 if (ret == 0) {
  data[0] = be32_to_cpu(c.u.idctxt.ctxt_data0);
  data[1] = be32_to_cpu(c.u.idctxt.ctxt_data1);
  data[2] = be32_to_cpu(c.u.idctxt.ctxt_data2);
  data[3] = be32_to_cpu(c.u.idctxt.ctxt_data3);
  data[4] = be32_to_cpu(c.u.idctxt.ctxt_data4);
  data[5] = be32_to_cpu(c.u.idctxt.ctxt_data5);
 }
 return ret;
}
