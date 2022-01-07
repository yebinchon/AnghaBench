
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct qed_hwfn {int dummy; } ;


 int PQ_FLAGS_RLS ;
 int PQ_FLAGS_VFS ;
 int qed_get_pq_flags (struct qed_hwfn*) ;
 int qed_init_qm_get_num_pf_rls (struct qed_hwfn*) ;
 int qed_init_qm_get_num_vfs (struct qed_hwfn*) ;

__attribute__((used)) static u16 qed_init_qm_get_num_vports(struct qed_hwfn *p_hwfn)
{
 u32 pq_flags = qed_get_pq_flags(p_hwfn);


 return (!!(PQ_FLAGS_RLS & pq_flags)) *
        qed_init_qm_get_num_pf_rls(p_hwfn) +
        (!!(PQ_FLAGS_VFS & pq_flags)) *
        qed_init_qm_get_num_vfs(p_hwfn) + 1;
}
