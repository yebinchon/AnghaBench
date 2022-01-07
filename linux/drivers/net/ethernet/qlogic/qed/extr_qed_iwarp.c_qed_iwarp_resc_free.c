
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_iwarp_info {int mpa_intermediate_buf; int partial_fpdus; int mpa_bufs; } ;
struct qed_hwfn {TYPE_1__* p_rdma_info; } ;
struct TYPE_2__ {int tcp_cid_map; struct qed_iwarp_info iwarp; } ;


 int kfree (int ) ;
 int qed_ooo_free (struct qed_hwfn*) ;
 int qed_rdma_bmap_free (struct qed_hwfn*,int *,int) ;

void qed_iwarp_resc_free(struct qed_hwfn *p_hwfn)
{
 struct qed_iwarp_info *iwarp_info = &p_hwfn->p_rdma_info->iwarp;

 qed_ooo_free(p_hwfn);
 qed_rdma_bmap_free(p_hwfn, &p_hwfn->p_rdma_info->tcp_cid_map, 1);
 kfree(iwarp_info->mpa_bufs);
 kfree(iwarp_info->partial_fpdus);
 kfree(iwarp_info->mpa_intermediate_buf);
}
