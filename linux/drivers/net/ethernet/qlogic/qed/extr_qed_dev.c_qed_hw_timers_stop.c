
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct qed_dev {scalar_t__ recov_in_prog; } ;


 int DP_NOTICE (struct qed_hwfn*,char*,int ,int ) ;
 int QED_HW_STOP_RETRY_LIMIT ;
 int TM_REG_PF_ENABLE_CONN ;
 int TM_REG_PF_ENABLE_TASK ;
 int TM_REG_PF_SCAN_ACTIVE_CONN ;
 int TM_REG_PF_SCAN_ACTIVE_TASK ;
 scalar_t__ qed_rd (struct qed_hwfn*,struct qed_ptt*,int ) ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void qed_hw_timers_stop(struct qed_dev *cdev,
          struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
 int i;


 qed_wr(p_hwfn, p_ptt, TM_REG_PF_ENABLE_CONN, 0x0);
 qed_wr(p_hwfn, p_ptt, TM_REG_PF_ENABLE_TASK, 0x0);

 if (cdev->recov_in_prog)
  return;

 for (i = 0; i < QED_HW_STOP_RETRY_LIMIT; i++) {
  if ((!qed_rd(p_hwfn, p_ptt,
        TM_REG_PF_SCAN_ACTIVE_CONN)) &&
      (!qed_rd(p_hwfn, p_ptt, TM_REG_PF_SCAN_ACTIVE_TASK)))
   break;




  usleep_range(1000, 2000);
 }

 if (i < QED_HW_STOP_RETRY_LIMIT)
  return;

 DP_NOTICE(p_hwfn,
    "Timers linear scans are not over [Connection %02x Tasks %02x]\n",
    (u8)qed_rd(p_hwfn, p_ptt, TM_REG_PF_SCAN_ACTIVE_CONN),
    (u8)qed_rd(p_hwfn, p_ptt, TM_REG_PF_SCAN_ACTIVE_TASK));
}
