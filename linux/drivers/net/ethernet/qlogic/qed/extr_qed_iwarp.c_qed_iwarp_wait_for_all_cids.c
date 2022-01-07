
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_hwfn {TYPE_1__* p_rdma_info; } ;
struct TYPE_2__ {int cid_map; int tcp_cid_map; } ;


 int QED_IWARP_PREALLOC_CNT ;
 int qed_bmap_release_id (struct qed_hwfn*,int *,int) ;
 int qed_iwarp_wait_cid_map_cleared (struct qed_hwfn*,int *) ;

__attribute__((used)) static int qed_iwarp_wait_for_all_cids(struct qed_hwfn *p_hwfn)
{
 int rc;
 int i;

 rc = qed_iwarp_wait_cid_map_cleared(p_hwfn,
         &p_hwfn->p_rdma_info->tcp_cid_map);
 if (rc)
  return rc;


 for (i = 0; i < QED_IWARP_PREALLOC_CNT; i++)
  qed_bmap_release_id(p_hwfn, &p_hwfn->p_rdma_info->cid_map, i);


 return qed_iwarp_wait_cid_map_cleared(p_hwfn,
           &p_hwfn->p_rdma_info->cid_map);
}
