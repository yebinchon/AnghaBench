
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_rdma_info {int dev; int port; int real_cid_map; int srq_map; int tid_map; int toggle_bits; int cq_map; int dpi_map; int pd_map; int cid_map; } ;
struct qed_hwfn {struct qed_rdma_info* p_rdma_info; } ;


 scalar_t__ QED_IS_IWARP_PERSONALITY (struct qed_hwfn*) ;
 int kfree (int ) ;
 int qed_iwarp_resc_free (struct qed_hwfn*) ;
 int qed_rdma_bmap_free (struct qed_hwfn*,int *,int) ;

__attribute__((used)) static void qed_rdma_resc_free(struct qed_hwfn *p_hwfn)
{
 struct qed_rdma_info *p_rdma_info = p_hwfn->p_rdma_info;

 if (QED_IS_IWARP_PERSONALITY(p_hwfn))
  qed_iwarp_resc_free(p_hwfn);

 qed_rdma_bmap_free(p_hwfn, &p_hwfn->p_rdma_info->cid_map, 1);
 qed_rdma_bmap_free(p_hwfn, &p_hwfn->p_rdma_info->pd_map, 1);
 qed_rdma_bmap_free(p_hwfn, &p_hwfn->p_rdma_info->dpi_map, 1);
 qed_rdma_bmap_free(p_hwfn, &p_hwfn->p_rdma_info->cq_map, 1);
 qed_rdma_bmap_free(p_hwfn, &p_hwfn->p_rdma_info->toggle_bits, 0);
 qed_rdma_bmap_free(p_hwfn, &p_hwfn->p_rdma_info->tid_map, 1);
 qed_rdma_bmap_free(p_hwfn, &p_hwfn->p_rdma_info->srq_map, 1);
 qed_rdma_bmap_free(p_hwfn, &p_hwfn->p_rdma_info->real_cid_map, 1);

 kfree(p_rdma_info->port);
 kfree(p_rdma_info->dev);
}
