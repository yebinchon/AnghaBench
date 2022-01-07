
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct qed_hwfn {int dummy; } ;
struct init_if_mode_op {int op_data; int modes_buf_offset; } ;


 int GET_FIELD (int ,int ) ;
 int INIT_IF_MODE_OP_CMD_OFFSET ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 scalar_t__ qed_init_cmd_mode_match (struct qed_hwfn*,int *,int) ;

__attribute__((used)) static u32 qed_init_cmd_mode(struct qed_hwfn *p_hwfn,
        struct init_if_mode_op *p_cmd, int modes)
{
 u16 offset = le16_to_cpu(p_cmd->modes_buf_offset);

 if (qed_init_cmd_mode_match(p_hwfn, &offset, modes))
  return 0;
 else
  return GET_FIELD(le32_to_cpu(p_cmd->op_data),
     INIT_IF_MODE_OP_CMD_OFFSET);
}
