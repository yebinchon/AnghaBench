
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct init_callback_op {int callback_id; } ;



 int DP_NOTICE (struct qed_hwfn*,char*,int) ;
 int EINVAL ;
 int qed_dmae_sanity (struct qed_hwfn*,struct qed_ptt*,char*) ;

__attribute__((used)) static int qed_init_cmd_cb(struct qed_hwfn *p_hwfn,
      struct qed_ptt *p_ptt,
      struct init_callback_op *p_cmd)
{
 int rc;

 switch (p_cmd->callback_id) {
 case 128:
  rc = qed_dmae_sanity(p_hwfn, p_ptt, "engine_phase");
  break;
 default:
  DP_NOTICE(p_hwfn, "Unexpected init op callback ID %d\n",
     p_cmd->callback_id);
  return -EINVAL;
 }

 return rc;
}
