
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct init_read_op {int op_data; int expected_val; } ;


 int DP_ERR (struct qed_hwfn*,char*,int,...) ;
 int GET_FIELD (int,int ) ;


 int INIT_POLL_NONE ;

 int INIT_READ_OP_ADDRESS ;
 int INIT_READ_OP_POLL_TYPE ;
 int QED_INIT_MAX_POLL_COUNT ;
 int QED_INIT_POLL_PERIOD_US ;
 int comp_and (u32,u32) ;
 int comp_eq (u32,u32) ;
 int comp_or (u32,u32) ;
 int le32_to_cpu (int ) ;
 int qed_rd (struct qed_hwfn*,struct qed_ptt*,int) ;
 int udelay (int) ;

__attribute__((used)) static void qed_init_cmd_rd(struct qed_hwfn *p_hwfn,
       struct qed_ptt *p_ptt, struct init_read_op *cmd)
{
 bool (*comp_check)(u32 val, u32 expected_val);
 u32 delay = QED_INIT_POLL_PERIOD_US, val;
 u32 data, addr, poll;
 int i;

 data = le32_to_cpu(cmd->op_data);
 addr = GET_FIELD(data, INIT_READ_OP_ADDRESS) << 2;
 poll = GET_FIELD(data, INIT_READ_OP_POLL_TYPE);


 val = qed_rd(p_hwfn, p_ptt, addr);

 if (poll == INIT_POLL_NONE)
  return;

 switch (poll) {
 case 129:
  comp_check = comp_eq;
  break;
 case 128:
  comp_check = comp_or;
  break;
 case 130:
  comp_check = comp_and;
  break;
 default:
  DP_ERR(p_hwfn, "Invalid poll comparison type %08x\n",
         cmd->op_data);
  return;
 }

 data = le32_to_cpu(cmd->expected_val);
 for (i = 0;
      i < QED_INIT_MAX_POLL_COUNT && !comp_check(val, data);
      i++) {
  udelay(delay);
  val = qed_rd(p_hwfn, p_ptt, addr);
 }

 if (i == QED_INIT_MAX_POLL_COUNT) {
  DP_ERR(p_hwfn,
         "Timeout when polling reg: 0x%08x [ Waiting-for: %08x Got: %08x (comparison %08x)]\n",
         addr, le32_to_cpu(cmd->expected_val),
         val, le32_to_cpu(cmd->op_data));
 }
}
