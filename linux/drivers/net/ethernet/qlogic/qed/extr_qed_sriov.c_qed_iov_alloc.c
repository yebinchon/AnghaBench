
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_pf_iov {int dummy; } ;
struct qed_hwfn {struct qed_pf_iov* pf_iov_info; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IS_PF_SRIOV (struct qed_hwfn*) ;
 int PROTOCOLID_COMMON ;
 int QED_MSG_IOV ;
 struct qed_pf_iov* kzalloc (int,int ) ;
 int qed_iov_allocate_vfdb (struct qed_hwfn*) ;
 int qed_spq_register_async_cb (struct qed_hwfn*,int ,int ) ;
 int qed_sriov_eqe_event ;

int qed_iov_alloc(struct qed_hwfn *p_hwfn)
{
 struct qed_pf_iov *p_sriov;

 if (!IS_PF_SRIOV(p_hwfn)) {
  DP_VERBOSE(p_hwfn, QED_MSG_IOV,
      "No SR-IOV - no need for IOV db\n");
  return 0;
 }

 p_sriov = kzalloc(sizeof(*p_sriov), GFP_KERNEL);
 if (!p_sriov)
  return -ENOMEM;

 p_hwfn->pf_iov_info = p_sriov;

 qed_spq_register_async_cb(p_hwfn, PROTOCOLID_COMMON,
      qed_sriov_eqe_event);

 return qed_iov_allocate_vfdb(p_hwfn);
}
