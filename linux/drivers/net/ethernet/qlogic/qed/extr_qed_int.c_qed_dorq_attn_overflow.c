
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct TYPE_2__ {int overflow; } ;
struct qed_hwfn {int db_bar_no_edpm; TYPE_1__ db_recovery_info; struct qed_ptt* p_dpc_ptt; } ;


 int DORQ_REG_PF_OVFL_STICKY ;
 int QED_OVERFLOW_BIT ;
 int qed_db_rec_flush_queue (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_periodic_db_rec_start (struct qed_hwfn*) ;
 int qed_rd (struct qed_hwfn*,struct qed_ptt*,int ) ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,int ,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void qed_dorq_attn_overflow(struct qed_hwfn *p_hwfn)
{
 struct qed_ptt *p_ptt = p_hwfn->p_dpc_ptt;
 u32 overflow;
 int rc;

 overflow = qed_rd(p_hwfn, p_ptt, DORQ_REG_PF_OVFL_STICKY);
 if (!overflow)
  goto out;


 set_bit(QED_OVERFLOW_BIT, &p_hwfn->db_recovery_info.overflow);

 if (!p_hwfn->db_bar_no_edpm) {
  rc = qed_db_rec_flush_queue(p_hwfn, p_ptt);
  if (rc)
   goto out;
 }

 qed_wr(p_hwfn, p_ptt, DORQ_REG_PF_OVFL_STICKY, 0x0);
out:

 qed_periodic_db_rec_start(p_hwfn);
}
