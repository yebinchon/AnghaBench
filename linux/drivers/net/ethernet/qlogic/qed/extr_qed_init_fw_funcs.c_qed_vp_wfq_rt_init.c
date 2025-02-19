
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct qed_hwfn {int dummy; } ;
struct init_qm_vport_params {scalar_t__* first_tx_pq_id; int vport_wfq; } ;


 int DP_NOTICE (struct qed_hwfn*,char*) ;
 size_t NUM_OF_TCS ;
 scalar_t__ QM_INVALID_PQ_ID ;
 scalar_t__ QM_REG_WFQVPCRD_RT_OFFSET ;
 scalar_t__ QM_REG_WFQVPWEIGHT_RT_OFFSET ;
 scalar_t__ QM_WFQ_CRD_REG_SIGN_BIT ;
 scalar_t__ QM_WFQ_INC_VAL (int ) ;
 scalar_t__ QM_WFQ_MAX_INC_VAL ;
 int STORE_RT_REG (struct qed_hwfn*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int qed_vp_wfq_rt_init(struct qed_hwfn *p_hwfn,
         u8 num_vports,
         struct init_qm_vport_params *vport_params)
{
 u16 vport_pq_id;
 u32 inc_val;
 u8 tc, i;


 for (i = 0; i < num_vports; i++) {
  if (!vport_params[i].vport_wfq)
   continue;

  inc_val = QM_WFQ_INC_VAL(vport_params[i].vport_wfq);
  if (inc_val > QM_WFQ_MAX_INC_VAL) {
   DP_NOTICE(p_hwfn,
      "Invalid VPORT WFQ weight configuration\n");
   return -1;
  }


  for (tc = 0; tc < NUM_OF_TCS; tc++) {
   vport_pq_id = vport_params[i].first_tx_pq_id[tc];
   if (vport_pq_id != QM_INVALID_PQ_ID) {
    STORE_RT_REG(p_hwfn,
          QM_REG_WFQVPCRD_RT_OFFSET +
          vport_pq_id,
          (u32)QM_WFQ_CRD_REG_SIGN_BIT);
    STORE_RT_REG(p_hwfn,
          QM_REG_WFQVPWEIGHT_RT_OFFSET +
          vport_pq_id, inc_val);
   }
  }
 }

 return 0;
}
