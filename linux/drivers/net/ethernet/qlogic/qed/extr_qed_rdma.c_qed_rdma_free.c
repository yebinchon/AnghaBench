
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_hwfn {TYPE_1__* p_rdma_info; } ;
struct TYPE_2__ {int proto; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*) ;
 int QED_MSG_RDMA ;
 int qed_cxt_free_proto_ilt (struct qed_hwfn*,int ) ;
 int qed_rdma_free_reserved_lkey (struct qed_hwfn*) ;
 int qed_rdma_resc_free (struct qed_hwfn*) ;

__attribute__((used)) static void qed_rdma_free(struct qed_hwfn *p_hwfn)
{
 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "Freeing RDMA\n");

 qed_rdma_free_reserved_lkey(p_hwfn);
 qed_cxt_free_proto_ilt(p_hwfn, p_hwfn->p_rdma_info->proto);
 qed_rdma_resc_free(p_hwfn);
}
