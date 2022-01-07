
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct qed_vf_info {scalar_t__ num_rxqs; int abs_vf_id; } ;
struct qed_hwfn {int dummy; } ;
typedef enum qed_iov_validate_q_mode { ____Placeholder_qed_iov_validate_q_mode } qed_iov_validate_q_mode ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ,scalar_t__,scalar_t__) ;
 int QED_MSG_IOV ;
 int qed_iov_validate_queue_mode (struct qed_hwfn*,struct qed_vf_info*,scalar_t__,int,int) ;

__attribute__((used)) static bool qed_iov_validate_rxq(struct qed_hwfn *p_hwfn,
     struct qed_vf_info *p_vf,
     u16 rx_qid,
     enum qed_iov_validate_q_mode mode)
{
 if (rx_qid >= p_vf->num_rxqs) {
  DP_VERBOSE(p_hwfn,
      QED_MSG_IOV,
      "VF[0x%02x] - can't touch Rx queue[%04x]; Only 0x%04x are allocated\n",
      p_vf->abs_vf_id, rx_qid, p_vf->num_rxqs);
  return 0;
 }

 return qed_iov_validate_queue_mode(p_hwfn, p_vf, rx_qid, mode, 0);
}
