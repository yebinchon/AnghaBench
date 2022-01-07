
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*) ;
 int NETIF_MSG_HW ;
 int QM_REG_SDMCMDREADY ;
 scalar_t__ QM_STOP_CMD_MAX_POLL_COUNT ;
 int QM_STOP_CMD_POLL_PERIOD_US ;
 scalar_t__ qed_rd (struct qed_hwfn*,struct qed_ptt*,int ) ;
 int udelay (int ) ;

__attribute__((used)) static bool qed_poll_on_qm_cmd_ready(struct qed_hwfn *p_hwfn,
         struct qed_ptt *p_ptt)
{
 u32 reg_val, i;

 for (i = 0, reg_val = 0; i < QM_STOP_CMD_MAX_POLL_COUNT && !reg_val;
      i++) {
  udelay(QM_STOP_CMD_POLL_PERIOD_US);
  reg_val = qed_rd(p_hwfn, p_ptt, QM_REG_SDMCMDREADY);
 }


 if (i == QM_STOP_CMD_MAX_POLL_COUNT) {
  DP_VERBOSE(p_hwfn, NETIF_MSG_HW,
      "Timeout when waiting for QM SDM command ready signal\n");
  return 0;
 }

 return 1;
}
