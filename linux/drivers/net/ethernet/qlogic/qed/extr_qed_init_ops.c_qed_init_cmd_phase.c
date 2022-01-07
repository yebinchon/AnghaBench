
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qed_hwfn {int dummy; } ;
struct init_if_phase_op {int op_data; int phase_data; } ;


 scalar_t__ ANY_PHASE_ID ;
 scalar_t__ GET_FIELD (scalar_t__,int ) ;
 int INIT_IF_PHASE_OP_CMD_OFFSET ;
 int INIT_IF_PHASE_OP_PHASE ;
 int INIT_IF_PHASE_OP_PHASE_ID ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static u32 qed_init_cmd_phase(struct qed_hwfn *p_hwfn,
         struct init_if_phase_op *p_cmd,
         u32 phase, u32 phase_id)
{
 u32 data = le32_to_cpu(p_cmd->phase_data);
 u32 op_data = le32_to_cpu(p_cmd->op_data);

 if (!(GET_FIELD(data, INIT_IF_PHASE_OP_PHASE) == phase &&
       (GET_FIELD(data, INIT_IF_PHASE_OP_PHASE_ID) == ANY_PHASE_ID ||
        GET_FIELD(data, INIT_IF_PHASE_OP_PHASE_ID) == phase_id)))
  return GET_FIELD(op_data, INIT_IF_PHASE_OP_CMD_OFFSET);
 else
  return 0;
}
