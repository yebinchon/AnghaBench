
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct qed_ptt {int dummy; } ;
struct qed_mcp_mb_params {int mcp_resp; int mcp_param; int param; int cmd; } ;
struct qed_mcp_cmd_elem {scalar_t__ b_is_completed; } ;
struct qed_hwfn {TYPE_1__* mcp_info; } ;
struct TYPE_2__ {int cmd_lock; scalar_t__ drv_mb_seq; } ;


 int AVOID_BLOCK ;
 int CAN_SLEEP ;
 scalar_t__ DIV_ROUND_UP (scalar_t__,int) ;
 int DP_NOTICE (struct qed_hwfn*,char*,int ,int ) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ,int ,scalar_t__,scalar_t__) ;
 int EAGAIN ;
 int ENOMEM ;
 int FW_MSG_CODE_MASK ;
 scalar_t__ QED_MB_FLAGS_IS_SET (struct qed_mcp_mb_params*,int ) ;
 int QED_MSG_SP ;
 int __qed_mcp_cmd_and_union (struct qed_hwfn*,struct qed_ptt*,struct qed_mcp_mb_params*,scalar_t__) ;
 int msleep (scalar_t__) ;
 struct qed_mcp_cmd_elem* qed_mcp_cmd_add_elem (struct qed_hwfn*,struct qed_mcp_mb_params*,scalar_t__) ;
 int qed_mcp_cmd_del_elem (struct qed_hwfn*,struct qed_mcp_cmd_elem*) ;
 int qed_mcp_cmd_set_blocking (struct qed_hwfn*,int) ;
 int qed_mcp_has_pending_cmd (struct qed_hwfn*) ;
 int qed_mcp_print_cpu_info (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_mcp_reread_offsets (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_mcp_update_pending_cmd (struct qed_hwfn*,struct qed_ptt*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int udelay (scalar_t__) ;

__attribute__((used)) static int
_qed_mcp_cmd_and_union(struct qed_hwfn *p_hwfn,
         struct qed_ptt *p_ptt,
         struct qed_mcp_mb_params *p_mb_params,
         u32 max_retries, u32 usecs)
{
 u32 cnt = 0, msecs = DIV_ROUND_UP(usecs, 1000);
 struct qed_mcp_cmd_elem *p_cmd_elem;
 u16 seq_num;
 int rc = 0;


 do {





  spin_lock_bh(&p_hwfn->mcp_info->cmd_lock);

  if (!qed_mcp_has_pending_cmd(p_hwfn))
   break;

  rc = qed_mcp_update_pending_cmd(p_hwfn, p_ptt);
  if (!rc)
   break;
  else if (rc != -EAGAIN)
   goto err;

  spin_unlock_bh(&p_hwfn->mcp_info->cmd_lock);

  if (QED_MB_FLAGS_IS_SET(p_mb_params, CAN_SLEEP))
   msleep(msecs);
  else
   udelay(usecs);
 } while (++cnt < max_retries);

 if (cnt >= max_retries) {
  DP_NOTICE(p_hwfn,
     "The MFW mailbox is occupied by an uncompleted command. Failed to send command 0x%08x [param 0x%08x].\n",
     p_mb_params->cmd, p_mb_params->param);
  return -EAGAIN;
 }


 qed_mcp_reread_offsets(p_hwfn, p_ptt);
 seq_num = ++p_hwfn->mcp_info->drv_mb_seq;
 p_cmd_elem = qed_mcp_cmd_add_elem(p_hwfn, p_mb_params, seq_num);
 if (!p_cmd_elem) {
  rc = -ENOMEM;
  goto err;
 }

 __qed_mcp_cmd_and_union(p_hwfn, p_ptt, p_mb_params, seq_num);
 spin_unlock_bh(&p_hwfn->mcp_info->cmd_lock);


 do {





  if (QED_MB_FLAGS_IS_SET(p_mb_params, CAN_SLEEP))
   msleep(msecs);
  else
   udelay(usecs);

  spin_lock_bh(&p_hwfn->mcp_info->cmd_lock);

  if (p_cmd_elem->b_is_completed)
   break;

  rc = qed_mcp_update_pending_cmd(p_hwfn, p_ptt);
  if (!rc)
   break;
  else if (rc != -EAGAIN)
   goto err;

  spin_unlock_bh(&p_hwfn->mcp_info->cmd_lock);
 } while (++cnt < max_retries);

 if (cnt >= max_retries) {
  DP_NOTICE(p_hwfn,
     "The MFW failed to respond to command 0x%08x [param 0x%08x].\n",
     p_mb_params->cmd, p_mb_params->param);
  qed_mcp_print_cpu_info(p_hwfn, p_ptt);

  spin_lock_bh(&p_hwfn->mcp_info->cmd_lock);
  qed_mcp_cmd_del_elem(p_hwfn, p_cmd_elem);
  spin_unlock_bh(&p_hwfn->mcp_info->cmd_lock);

  if (!QED_MB_FLAGS_IS_SET(p_mb_params, AVOID_BLOCK))
   qed_mcp_cmd_set_blocking(p_hwfn, 1);

  return -EAGAIN;
 }

 qed_mcp_cmd_del_elem(p_hwfn, p_cmd_elem);
 spin_unlock_bh(&p_hwfn->mcp_info->cmd_lock);

 DP_VERBOSE(p_hwfn,
     QED_MSG_SP,
     "MFW mailbox: response 0x%08x param 0x%08x [after %d.%03d ms]\n",
     p_mb_params->mcp_resp,
     p_mb_params->mcp_param,
     (cnt * usecs) / 1000, (cnt * usecs) % 1000);


 p_mb_params->mcp_resp &= FW_MSG_CODE_MASK;

 return 0;

err:
 spin_unlock_bh(&p_hwfn->mcp_info->cmd_lock);
 return rc;
}
