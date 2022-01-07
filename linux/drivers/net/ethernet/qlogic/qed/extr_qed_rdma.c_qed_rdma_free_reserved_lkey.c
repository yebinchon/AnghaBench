
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qed_hwfn {TYPE_2__* p_rdma_info; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int reserved_lkey; } ;


 int qed_rdma_free_tid (struct qed_hwfn*,int ) ;

__attribute__((used)) static void qed_rdma_free_reserved_lkey(struct qed_hwfn *p_hwfn)
{
 qed_rdma_free_tid(p_hwfn, p_hwfn->p_rdma_info->dev->reserved_lkey);
}
