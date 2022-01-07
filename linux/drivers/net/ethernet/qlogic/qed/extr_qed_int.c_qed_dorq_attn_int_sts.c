
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int cdev; struct qed_ptt* p_dpc_ptt; } ;


 int DORQ_REG_DB_DROP_DETAILS ;
 int DORQ_REG_DB_DROP_DETAILS_ADDRESS ;
 int DORQ_REG_DB_DROP_DETAILS_REASON ;
 int DORQ_REG_DB_DROP_DETAILS_REL ;
 int DORQ_REG_DB_DROP_REASON ;
 int DORQ_REG_INT_STS ;
 int DORQ_REG_INT_STS_DB_DROP ;
 int DORQ_REG_INT_STS_DORQ_FIFO_AFULL ;
 int DORQ_REG_INT_STS_DORQ_FIFO_OVFL_ERR ;
 int DORQ_REG_INT_STS_WR ;
 int DP_INFO (struct qed_hwfn*,char*) ;
 int DP_NOTICE (int ,char*,int,...) ;
 int EINVAL ;
 int GET_FIELD (int,int ) ;
 int QED_DORQ_ATTENTION_OPAQUE ;
 int QED_DORQ_ATTENTION_REASON_MASK ;
 int QED_DORQ_ATTENTION_SIZE ;
 int qed_rd (struct qed_hwfn*,struct qed_ptt*,int ) ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,int ,int) ;

__attribute__((used)) static int qed_dorq_attn_int_sts(struct qed_hwfn *p_hwfn)
{
 u32 int_sts, first_drop_reason, details, address, all_drops_reason;
 struct qed_ptt *p_ptt = p_hwfn->p_dpc_ptt;






 int_sts = qed_rd(p_hwfn, p_ptt, DORQ_REG_INT_STS);
 if (!(int_sts & ~DORQ_REG_INT_STS_DORQ_FIFO_AFULL))
  return 0;

 DP_NOTICE(p_hwfn->cdev, "DORQ attention. int_sts was %x\n", int_sts);


 if (int_sts & (DORQ_REG_INT_STS_DB_DROP |
         DORQ_REG_INT_STS_DORQ_FIFO_OVFL_ERR)) {

  first_drop_reason = qed_rd(p_hwfn, p_ptt,
        DORQ_REG_DB_DROP_REASON) &
      QED_DORQ_ATTENTION_REASON_MASK;
  details = qed_rd(p_hwfn, p_ptt, DORQ_REG_DB_DROP_DETAILS);
  address = qed_rd(p_hwfn, p_ptt,
     DORQ_REG_DB_DROP_DETAILS_ADDRESS);
  all_drops_reason = qed_rd(p_hwfn, p_ptt,
       DORQ_REG_DB_DROP_DETAILS_REASON);


  DP_NOTICE(p_hwfn->cdev,
     "Doorbell drop occurred\n"
     "Address\t\t0x%08x\t(second BAR address)\n"
     "FID\t\t0x%04x\t\t(Opaque FID)\n"
     "Size\t\t0x%04x\t\t(in bytes)\n"
     "1st drop reason\t0x%08x\t(details on first drop since last handling)\n"
     "Sticky reasons\t0x%08x\t(all drop reasons since last handling)\n",
     address,
     GET_FIELD(details, QED_DORQ_ATTENTION_OPAQUE),
     GET_FIELD(details, QED_DORQ_ATTENTION_SIZE) * 4,
     first_drop_reason, all_drops_reason);


  qed_wr(p_hwfn, p_ptt, DORQ_REG_DB_DROP_DETAILS_REL, 0);




  qed_wr(p_hwfn,
         p_ptt,
         DORQ_REG_INT_STS_WR,
         DORQ_REG_INT_STS_DB_DROP |
         DORQ_REG_INT_STS_DORQ_FIFO_OVFL_ERR);


  if ((int_sts & ~(DORQ_REG_INT_STS_DB_DROP |
     DORQ_REG_INT_STS_DORQ_FIFO_OVFL_ERR |
     DORQ_REG_INT_STS_DORQ_FIFO_AFULL)) == 0)
   return 0;
 }


 DP_INFO(p_hwfn, "DORQ fatal attention\n");

 return -EINVAL;
}
