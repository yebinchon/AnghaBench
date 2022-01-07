
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct qed_qm_info {scalar_t__ num_vf_pqs; int num_pqs; } ;
struct qed_hwfn {struct qed_qm_info qm_info; } ;


 int PQ_FLAGS_VFS ;
 int PQ_INIT_DEFAULT_TC ;
 int PQ_INIT_VF_RL ;
 int qed_get_pq_flags (struct qed_hwfn*) ;
 scalar_t__ qed_init_qm_get_num_vfs (struct qed_hwfn*) ;
 int qed_init_qm_pq (struct qed_hwfn*,struct qed_qm_info*,int ,int ) ;
 int qed_init_qm_set_idx (struct qed_hwfn*,int,int ) ;

__attribute__((used)) static void qed_init_qm_vf_pqs(struct qed_hwfn *p_hwfn)
{
 struct qed_qm_info *qm_info = &p_hwfn->qm_info;
 u16 vf_idx, num_vfs = qed_init_qm_get_num_vfs(p_hwfn);

 if (!(qed_get_pq_flags(p_hwfn) & PQ_FLAGS_VFS))
  return;

 qed_init_qm_set_idx(p_hwfn, PQ_FLAGS_VFS, qm_info->num_pqs);
 qm_info->num_vf_pqs = num_vfs;
 for (vf_idx = 0; vf_idx < num_vfs; vf_idx++)
  qed_init_qm_pq(p_hwfn,
          qm_info, PQ_INIT_DEFAULT_TC, PQ_INIT_VF_RL);
}
