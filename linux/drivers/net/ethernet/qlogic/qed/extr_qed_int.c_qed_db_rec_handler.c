
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct qed_ptt {int dummy; } ;
struct TYPE_2__ {int overflow; } ;
struct qed_hwfn {int db_bar_no_edpm; TYPE_1__ db_recovery_info; } ;


 int DORQ_REG_PF_OVFL_STICKY ;
 int DP_NOTICE (struct qed_hwfn*,char*,scalar_t__,scalar_t__) ;
 int QED_OVERFLOW_BIT ;
 int qed_db_rec_flush_queue (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_db_recovery_execute (struct qed_hwfn*) ;
 scalar_t__ qed_rd (struct qed_hwfn*,struct qed_ptt*,int ) ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,int ,int) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

int qed_db_rec_handler(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
 u32 attn_ovfl, cur_ovfl;
 int rc;

 attn_ovfl = test_and_clear_bit(QED_OVERFLOW_BIT,
           &p_hwfn->db_recovery_info.overflow);
 cur_ovfl = qed_rd(p_hwfn, p_ptt, DORQ_REG_PF_OVFL_STICKY);
 if (!cur_ovfl && !attn_ovfl)
  return 0;

 DP_NOTICE(p_hwfn, "PF Overflow sticky: attn %u current %u\n",
    attn_ovfl, cur_ovfl);

 if (cur_ovfl && !p_hwfn->db_bar_no_edpm) {
  rc = qed_db_rec_flush_queue(p_hwfn, p_ptt);
  if (rc)
   return rc;
 }


 qed_wr(p_hwfn, p_ptt, DORQ_REG_PF_OVFL_STICKY, 0x0);


 qed_db_recovery_execute(p_hwfn);

 return 0;
}
