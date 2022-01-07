
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int rdma_prs_search_reg; } ;


 int DP_NOTICE (struct qed_hwfn*,char*) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*) ;
 int EINVAL ;
 int PROTOCOLID_ROCE ;
 int PRS_REG_LIGHT_L2_ETHERTYPE_EN ;
 int PRS_REG_ROCE_DEST_QP_MAX_PF ;
 int PRS_REG_SEARCH_ROCE ;
 int QED_MSG_RDMA ;
 int qed_cxt_get_proto_cid_start (struct qed_hwfn*,int ) ;
 int qed_rd (struct qed_hwfn*,struct qed_ptt*,int ) ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,int ,int) ;

int qed_roce_init_hw(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
 u32 ll2_ethertype_en;

 qed_wr(p_hwfn, p_ptt, PRS_REG_ROCE_DEST_QP_MAX_PF, 0);

 p_hwfn->rdma_prs_search_reg = PRS_REG_SEARCH_ROCE;

 ll2_ethertype_en = qed_rd(p_hwfn, p_ptt, PRS_REG_LIGHT_L2_ETHERTYPE_EN);
 qed_wr(p_hwfn, p_ptt, PRS_REG_LIGHT_L2_ETHERTYPE_EN,
        (ll2_ethertype_en | 0x01));

 if (qed_cxt_get_proto_cid_start(p_hwfn, PROTOCOLID_ROCE) % 2) {
  DP_NOTICE(p_hwfn, "The first RoCE's cid should be even\n");
  return -EINVAL;
 }

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "Initializing HW - Done\n");
 return 0;
}
