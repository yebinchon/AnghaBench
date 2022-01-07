
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_rdma_device {int max_qp_req_rd_atomic_resc; int max_qp_resp_rd_atomic_resc; scalar_t__ max_qp; scalar_t__ max_cq; int max_inline; } ;
struct qed_hwfn {TYPE_1__* p_rdma_info; } ;
struct TYPE_2__ {int num_qps; struct qed_rdma_device* dev; } ;


 int IWARP_MAX_QPS ;
 int IWARP_REQ_MAX_INLINE_DATA_SIZE ;
 int QED_IWARP_IRD_DEFAULT ;
 int QED_IWARP_ORD_DEFAULT ;
 scalar_t__ QED_IWARP_PREALLOC_CNT ;
 scalar_t__ min_t (int ,int ,int ) ;
 int u32 ;

void qed_iwarp_init_devinfo(struct qed_hwfn *p_hwfn)
{
 struct qed_rdma_device *dev = p_hwfn->p_rdma_info->dev;

 dev->max_inline = IWARP_REQ_MAX_INLINE_DATA_SIZE;
 dev->max_qp = min_t(u32,
       IWARP_MAX_QPS,
       p_hwfn->p_rdma_info->num_qps) -
        QED_IWARP_PREALLOC_CNT;

 dev->max_cq = dev->max_qp;

 dev->max_qp_resp_rd_atomic_resc = QED_IWARP_IRD_DEFAULT;
 dev->max_qp_req_rd_atomic_resc = QED_IWARP_ORD_DEFAULT;
}
