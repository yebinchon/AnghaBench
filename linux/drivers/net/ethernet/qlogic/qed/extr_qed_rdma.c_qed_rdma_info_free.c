
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int * p_rdma_info; } ;


 int kfree (int *) ;

void qed_rdma_info_free(struct qed_hwfn *p_hwfn)
{
 kfree(p_hwfn->p_rdma_info);
 p_hwfn->p_rdma_info = ((void*)0);
}
