
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct qed_hwfn {TYPE_1__* p_rdma_info; } ;
struct TYPE_2__ {scalar_t__ max_queue_zones; scalar_t__ queue_zone_base; } ;


 int DP_NOTICE (struct qed_hwfn*,char*,scalar_t__,scalar_t__) ;
 scalar_t__ GTT_BAR0_MAP_REG_USDM_RAM ;
 int REG_WR16 (struct qed_hwfn*,scalar_t__,scalar_t__) ;
 scalar_t__ USTORM_COMMON_QUEUE_CONS_OFFSET (scalar_t__) ;
 int wmb () ;

__attribute__((used)) static void qed_rdma_cnq_prod_update(void *rdma_cxt, u8 qz_offset, u16 prod)
{
 struct qed_hwfn *p_hwfn;
 u16 qz_num;
 u32 addr;

 p_hwfn = (struct qed_hwfn *)rdma_cxt;

 if (qz_offset > p_hwfn->p_rdma_info->max_queue_zones) {
  DP_NOTICE(p_hwfn,
     "queue zone offset %d is too large (max is %d)\n",
     qz_offset, p_hwfn->p_rdma_info->max_queue_zones);
  return;
 }

 qz_num = p_hwfn->p_rdma_info->queue_zone_base + qz_offset;
 addr = GTT_BAR0_MAP_REG_USDM_RAM +
        USTORM_COMMON_QUEUE_CONS_OFFSET(qz_num);

 REG_WR16(p_hwfn, addr, prod);


 wmb();
}
