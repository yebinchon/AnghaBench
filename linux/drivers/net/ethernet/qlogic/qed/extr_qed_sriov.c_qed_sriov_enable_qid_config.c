
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct qed_iov_vf_init_params {size_t num_queues; size_t rel_vf_id; size_t* req_rx_queue; size_t* req_tx_queue; } ;
struct qed_hwfn {int dummy; } ;


 size_t FEAT_NUM (struct qed_hwfn*,int ) ;
 int QED_PF_L2_QUE ;

__attribute__((used)) static void qed_sriov_enable_qid_config(struct qed_hwfn *hwfn,
     u16 vfid,
     struct qed_iov_vf_init_params *params)
{
 u16 base, i;





 base = FEAT_NUM(hwfn, QED_PF_L2_QUE) + vfid * params->num_queues;

 params->rel_vf_id = vfid;
 for (i = 0; i < params->num_queues; i++) {
  params->req_rx_queue[i] = base + i;
  params->req_tx_queue[i] = base + i;
 }
}
