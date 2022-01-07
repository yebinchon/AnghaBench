
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int offset; } ;
union init_write_args {TYPE_1__ runtime; int zeros_count; int inline_val; } ;
typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct init_write_op {union init_write_args args; int data; } ;


 int DP_NOTICE (struct qed_hwfn*,char*,int) ;
 int EINVAL ;
 int GET_FIELD (int,int ) ;




 int INIT_WRITE_OP_ADDRESS ;
 int INIT_WRITE_OP_SOURCE ;
 int INIT_WRITE_OP_WIDE_BUS ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int qed_init_cmd_array (struct qed_hwfn*,struct qed_ptt*,struct init_write_op*,int,int) ;
 int qed_init_fill (struct qed_hwfn*,struct qed_ptt*,int,int ,int) ;
 int qed_init_fill_dmae (struct qed_hwfn*,struct qed_ptt*,int,int ,int) ;
 int qed_init_rt (struct qed_hwfn*,struct qed_ptt*,int,int ,int ,int) ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,int,int) ;

__attribute__((used)) static int qed_init_cmd_wr(struct qed_hwfn *p_hwfn,
      struct qed_ptt *p_ptt,
      struct init_write_op *p_cmd, bool b_can_dmae)
{
 u32 data = le32_to_cpu(p_cmd->data);
 bool b_must_dmae = GET_FIELD(data, INIT_WRITE_OP_WIDE_BUS);
 u32 addr = GET_FIELD(data, INIT_WRITE_OP_ADDRESS) << 2;
 union init_write_args *arg = &p_cmd->args;
 int rc = 0;


 if (b_must_dmae && !b_can_dmae) {
  DP_NOTICE(p_hwfn,
     "Need to write to %08x for Wide-bus but DMAE isn't allowed\n",
     addr);
  return -EINVAL;
 }

 switch (GET_FIELD(data, INIT_WRITE_OP_SOURCE)) {
 case 130:
  data = le32_to_cpu(p_cmd->args.inline_val);
  qed_wr(p_hwfn, p_ptt, addr, data);
  break;
 case 128:
  data = le32_to_cpu(p_cmd->args.zeros_count);
  if (b_must_dmae || (b_can_dmae && (data >= 64)))
   rc = qed_init_fill_dmae(p_hwfn, p_ptt, addr, 0, data);
  else
   qed_init_fill(p_hwfn, p_ptt, addr, 0, data);
  break;
 case 131:
  rc = qed_init_cmd_array(p_hwfn, p_ptt, p_cmd,
     b_must_dmae, b_can_dmae);
  break;
 case 129:
  qed_init_rt(p_hwfn, p_ptt, addr,
       le16_to_cpu(arg->runtime.offset),
       le16_to_cpu(arg->runtime.size),
       b_must_dmae);
  break;
 }

 return rc;
}
