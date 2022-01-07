
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int cdev; } ;


 scalar_t__ BDQ_NUM_RESOURCES ;
 int EINVAL ;
 scalar_t__ FW_MSG_CODE_UNSUPPORTED ;
 scalar_t__ MAX_NUM_LL2_RX_QUEUES ;
 scalar_t__ NUM_OF_GLOBAL_QUEUES ;

 int QED_IS_AH (int ) ;

 int QED_MAX_RESC ;


 scalar_t__ RDMA_NUM_STATISTIC_COUNTERS_BB ;
 scalar_t__ RDMA_NUM_STATISTIC_COUNTERS_K2 ;
 int __qed_hw_set_soft_resc_size (struct qed_hwfn*,struct qed_ptt*,int,scalar_t__,scalar_t__*) ;

__attribute__((used)) static int
qed_hw_set_soft_resc_size(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
 bool b_ah = QED_IS_AH(p_hwfn->cdev);
 u32 resc_max_val, mcp_resp;
 u8 res_id;
 int rc;

 for (res_id = 0; res_id < QED_MAX_RESC; res_id++) {
  switch (res_id) {
  case 130:
   resc_max_val = MAX_NUM_LL2_RX_QUEUES;
   break;
  case 129:



   resc_max_val = NUM_OF_GLOBAL_QUEUES;
   break;
  case 128:
   resc_max_val = b_ah ? RDMA_NUM_STATISTIC_COUNTERS_K2
       : RDMA_NUM_STATISTIC_COUNTERS_BB;
   break;
  case 131:
   resc_max_val = BDQ_NUM_RESOURCES;
   break;
  default:
   continue;
  }

  rc = __qed_hw_set_soft_resc_size(p_hwfn, p_ptt, res_id,
       resc_max_val, &mcp_resp);
  if (rc)
   return rc;







  if (mcp_resp == FW_MSG_CODE_UNSUPPORTED)
   return -EINVAL;
 }

 return 0;
}
