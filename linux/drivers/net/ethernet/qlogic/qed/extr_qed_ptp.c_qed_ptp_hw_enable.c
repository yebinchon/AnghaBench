
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_ptt {int dummy; } ;
struct qed_hwfn {int cdev; struct qed_ptt* p_ptp_ptt; } ;
struct qed_dev {int dummy; } ;


 int DP_INFO (struct qed_hwfn*,char*) ;
 int DP_NOTICE (struct qed_hwfn*,char*) ;
 int EBUSY ;
 int NIG_REG_LLH_PTP_HOST_BUF_SEQID ;
 int NIG_REG_LLH_PTP_PARAM_MASK ;
 int NIG_REG_LLH_PTP_RULE_MASK ;
 int NIG_REG_PTP_LATCH_OSTS_PKT_TIME ;
 int NIG_REG_RX_PTP_EN ;
 int NIG_REG_TIMESYNC_GEN_REG_BB ;
 int NIG_REG_TSGEN_DRIFT_CNTR_CONF ;
 int NIG_REG_TSGEN_FREECNT_UPDATE_K2 ;
 int NIG_REG_TSGEN_FREE_CNT_VALUE_LSB ;
 int NIG_REG_TSGEN_FREE_CNT_VALUE_MSB ;
 int NIG_REG_TSGEN_RST_DRIFT_CNTR ;
 int NIG_REG_TS_OUTPUT_ENABLE_PDA ;
 int NIG_REG_TX_LLH_PTP_BUF_SEQID ;
 int NIG_REG_TX_LLH_PTP_PARAM_MASK ;
 int NIG_REG_TX_LLH_PTP_RULE_MASK ;
 int NIG_REG_TX_PTP_EN ;
 scalar_t__ QED_IS_AH (int ) ;
 scalar_t__ QED_IS_BB_B0 (int ) ;
 struct qed_hwfn* QED_LEADING_HWFN (struct qed_dev*) ;
 int QED_TIMESTAMP_MASK ;
 int qed_ptp_res_lock (struct qed_hwfn*,struct qed_ptt*) ;
 struct qed_ptt* qed_ptt_acquire (struct qed_hwfn*) ;
 int qed_ptt_release (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,int ,int) ;

__attribute__((used)) static int qed_ptp_hw_enable(struct qed_dev *cdev)
{
 struct qed_hwfn *p_hwfn = QED_LEADING_HWFN(cdev);
 struct qed_ptt *p_ptt;
 int rc;

 p_ptt = qed_ptt_acquire(p_hwfn);
 if (!p_ptt) {
  DP_NOTICE(p_hwfn, "Failed to acquire PTT for PTP\n");
  return -EBUSY;
 }

 p_hwfn->p_ptp_ptt = p_ptt;

 rc = qed_ptp_res_lock(p_hwfn, p_ptt);
 if (rc) {
  DP_INFO(p_hwfn,
   "Couldn't acquire the resource lock, skip ptp enable for this PF\n");
  qed_ptt_release(p_hwfn, p_ptt);
  p_hwfn->p_ptp_ptt = ((void*)0);
  return rc;
 }


 qed_wr(p_hwfn, p_ptt, NIG_REG_LLH_PTP_PARAM_MASK, 0x7FF);
 qed_wr(p_hwfn, p_ptt, NIG_REG_LLH_PTP_RULE_MASK, 0x3FFF);
 qed_wr(p_hwfn, p_ptt, NIG_REG_TX_LLH_PTP_PARAM_MASK, 0x7FF);
 qed_wr(p_hwfn, p_ptt, NIG_REG_TX_LLH_PTP_RULE_MASK, 0x3FFF);

 qed_wr(p_hwfn, p_ptt, NIG_REG_TX_PTP_EN, 7);
 qed_wr(p_hwfn, p_ptt, NIG_REG_RX_PTP_EN, 7);

 qed_wr(p_hwfn, p_ptt, NIG_REG_TS_OUTPUT_ENABLE_PDA, 0x1);


 if (QED_IS_BB_B0(p_hwfn->cdev))
  qed_wr(p_hwfn, p_ptt, NIG_REG_TIMESYNC_GEN_REG_BB, 2);
 if (QED_IS_AH(p_hwfn->cdev))
  qed_wr(p_hwfn, p_ptt, NIG_REG_TSGEN_FREECNT_UPDATE_K2, 2);

 qed_wr(p_hwfn, p_ptt, NIG_REG_TSGEN_FREE_CNT_VALUE_LSB, 0);
 qed_wr(p_hwfn, p_ptt, NIG_REG_TSGEN_FREE_CNT_VALUE_MSB, 0);

 if (QED_IS_BB_B0(p_hwfn->cdev))
  qed_wr(p_hwfn, p_ptt, NIG_REG_TIMESYNC_GEN_REG_BB, 4);
 if (QED_IS_AH(p_hwfn->cdev)) {
  qed_wr(p_hwfn, p_ptt, NIG_REG_TSGEN_FREECNT_UPDATE_K2, 4);
  qed_wr(p_hwfn, p_ptt, NIG_REG_PTP_LATCH_OSTS_PKT_TIME, 1);
 }


 qed_wr(p_hwfn, p_ptt, NIG_REG_TSGEN_DRIFT_CNTR_CONF, 0x0);
 qed_wr(p_hwfn, p_ptt, NIG_REG_TSGEN_RST_DRIFT_CNTR, 0x0);


 qed_wr(p_hwfn, p_ptt, NIG_REG_LLH_PTP_HOST_BUF_SEQID,
        QED_TIMESTAMP_MASK);
 qed_wr(p_hwfn, p_ptt, NIG_REG_TX_LLH_PTP_BUF_SEQID, QED_TIMESTAMP_MASK);

 return 0;
}
