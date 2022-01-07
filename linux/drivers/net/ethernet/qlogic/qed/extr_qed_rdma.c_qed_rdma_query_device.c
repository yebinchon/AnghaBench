
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_rdma_device {int dummy; } ;
struct qed_hwfn {TYPE_1__* p_rdma_info; } ;
struct TYPE_2__ {struct qed_rdma_device* dev; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*) ;
 int QED_MSG_RDMA ;

__attribute__((used)) static struct qed_rdma_device *qed_rdma_query_device(void *rdma_cxt)
{
 struct qed_hwfn *p_hwfn = (struct qed_hwfn *)rdma_cxt;

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "Query device\n");


 return p_hwfn->p_rdma_info->dev;
}
