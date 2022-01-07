
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_rdma_device {scalar_t__ reserved_lkey; } ;
struct qed_hwfn {TYPE_1__* p_rdma_info; } ;
struct TYPE_2__ {struct qed_rdma_device* dev; } ;


 int DP_NOTICE (struct qed_hwfn*,char*) ;
 int EINVAL ;
 scalar_t__ RDMA_RESERVED_LKEY ;
 int qed_rdma_alloc_tid (struct qed_hwfn*,scalar_t__*) ;

__attribute__((used)) static int qed_rdma_reserve_lkey(struct qed_hwfn *p_hwfn)
{
 struct qed_rdma_device *dev = p_hwfn->p_rdma_info->dev;





 qed_rdma_alloc_tid(p_hwfn, &dev->reserved_lkey);
 if (dev->reserved_lkey != RDMA_RESERVED_LKEY) {
  DP_NOTICE(p_hwfn,
     "Reserved lkey should be equal to RDMA_RESERVED_LKEY\n");
  return -EINVAL;
 }

 return 0;
}
