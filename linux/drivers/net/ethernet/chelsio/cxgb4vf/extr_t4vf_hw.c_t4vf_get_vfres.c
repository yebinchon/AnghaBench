
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vf_resources {int nethctrl; int wx_caps; int r_caps; int nexactf; int nvi; int tc; int pmask; int neq; int niq; int niqflint; } ;
struct fw_pfvf_cmd {int r_caps_to_nethctrl; int tc_to_nexactf; int type_to_neq; int niqflint_niq; void* retval_len16; void* op_to_vfn; } ;
struct TYPE_2__ {struct vf_resources vfres; } ;
struct adapter {TYPE_1__ params; } ;
typedef int cmd ;


 int FW_CMD_OP_V (int ) ;
 int FW_CMD_READ_F ;
 int FW_CMD_REQUEST_F ;
 int FW_LEN16 (struct fw_pfvf_cmd) ;
 int FW_PFVF_CMD ;
 int FW_PFVF_CMD_NEQ_G (int ) ;
 int FW_PFVF_CMD_NETHCTRL_G (int ) ;
 int FW_PFVF_CMD_NEXACTF_G (int ) ;
 int FW_PFVF_CMD_NIQFLINT_G (int ) ;
 int FW_PFVF_CMD_NIQ_G (int ) ;
 int FW_PFVF_CMD_NVI_G (int ) ;
 int FW_PFVF_CMD_PMASK_G (int ) ;
 int FW_PFVF_CMD_R_CAPS_G (int ) ;
 int FW_PFVF_CMD_TC_G (int ) ;
 int FW_PFVF_CMD_WX_CAPS_G (int ) ;
 int be32_to_cpu (int ) ;
 void* cpu_to_be32 (int) ;
 int memset (struct fw_pfvf_cmd*,int ,int) ;
 int t4vf_wr_mbox (struct adapter*,struct fw_pfvf_cmd*,int,struct fw_pfvf_cmd*) ;

int t4vf_get_vfres(struct adapter *adapter)
{
 struct vf_resources *vfres = &adapter->params.vfres;
 struct fw_pfvf_cmd cmd, rpl;
 int v;
 u32 word;





 memset(&cmd, 0, sizeof(cmd));
 cmd.op_to_vfn = cpu_to_be32(FW_CMD_OP_V(FW_PFVF_CMD) |
        FW_CMD_REQUEST_F |
        FW_CMD_READ_F);
 cmd.retval_len16 = cpu_to_be32(FW_LEN16(cmd));
 v = t4vf_wr_mbox(adapter, &cmd, sizeof(cmd), &rpl);
 if (v)
  return v;




 word = be32_to_cpu(rpl.niqflint_niq);
 vfres->niqflint = FW_PFVF_CMD_NIQFLINT_G(word);
 vfres->niq = FW_PFVF_CMD_NIQ_G(word);

 word = be32_to_cpu(rpl.type_to_neq);
 vfres->neq = FW_PFVF_CMD_NEQ_G(word);
 vfres->pmask = FW_PFVF_CMD_PMASK_G(word);

 word = be32_to_cpu(rpl.tc_to_nexactf);
 vfres->tc = FW_PFVF_CMD_TC_G(word);
 vfres->nvi = FW_PFVF_CMD_NVI_G(word);
 vfres->nexactf = FW_PFVF_CMD_NEXACTF_G(word);

 word = be32_to_cpu(rpl.r_caps_to_nethctrl);
 vfres->r_caps = FW_PFVF_CMD_R_CAPS_G(word);
 vfres->wx_caps = FW_PFVF_CMD_WX_CAPS_G(word);
 vfres->nethctrl = FW_PFVF_CMD_NETHCTRL_G(word);

 return 0;
}
