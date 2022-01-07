
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {struct qed_dev* cdev; } ;
struct qed_dev {int recov_in_prog; } ;


 int DP_NOTICE (struct qed_hwfn*,char*,...) ;
 struct qed_hwfn* QED_LEADING_HWFN (struct qed_dev*) ;
 int qed_get_process_kill_counter (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_int_igu_disable_int (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_schedule_recovery_handler (struct qed_hwfn*) ;

__attribute__((used)) static void qed_mcp_handle_process_kill(struct qed_hwfn *p_hwfn,
     struct qed_ptt *p_ptt)
{
 struct qed_dev *cdev = p_hwfn->cdev;
 u32 proc_kill_cnt;




 qed_int_igu_disable_int(p_hwfn, p_ptt);

 DP_NOTICE(p_hwfn, "Received a process kill indication\n");




 if (p_hwfn != QED_LEADING_HWFN(cdev))
  return;

 if (cdev->recov_in_prog) {
  DP_NOTICE(p_hwfn,
     "Ignoring the indication since a recovery process is already in progress\n");
  return;
 }

 cdev->recov_in_prog = 1;

 proc_kill_cnt = qed_get_process_kill_counter(p_hwfn, p_ptt);
 DP_NOTICE(p_hwfn, "Process kill counter: %d\n", proc_kill_cnt);

 qed_schedule_recovery_handler(p_hwfn);
}
