
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int cdev; } ;


 int DORQ_REG_DPM_FORCE_ABORT ;
 int DORQ_REG_PF_USAGE_CNT ;
 int DP_NOTICE (int ,char*,int,int) ;
 int EBUSY ;
 int QED_DB_REC_COUNT ;
 int QED_DB_REC_INTERVAL ;
 int qed_rd (struct qed_hwfn*,struct qed_ptt*,int ) ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int qed_db_rec_flush_queue(struct qed_hwfn *p_hwfn,
      struct qed_ptt *p_ptt)
{
 u32 count = QED_DB_REC_COUNT;
 u32 usage = 1;


 qed_wr(p_hwfn, p_ptt, DORQ_REG_DPM_FORCE_ABORT, 0x1);
 while (count-- && usage) {
  usage = qed_rd(p_hwfn, p_ptt, DORQ_REG_PF_USAGE_CNT);
  udelay(QED_DB_REC_INTERVAL);
 }


 if (usage) {
  DP_NOTICE(p_hwfn->cdev,
     "DB recovery: doorbell usage failed to zero after %d usec. usage was %x\n",
     QED_DB_REC_INTERVAL * QED_DB_REC_COUNT, usage);
  return -EBUSY;
 }

 return 0;
}
