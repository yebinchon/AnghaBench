
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_hwfn {TYPE_1__* p_rdma_info; } ;
struct qed_bmap {int max_count; int bitmap; } ;
struct TYPE_2__ {struct qed_bmap real_cid_map; } ;


 int DP_NOTICE (struct qed_hwfn*,char*) ;
 int PROTOCOLID_ROCE ;
 scalar_t__ bitmap_weight (int ,int ) ;
 int msleep (int) ;
 int qed_spq_unregister_async_cb (struct qed_hwfn*,int ) ;

void qed_roce_stop(struct qed_hwfn *p_hwfn)
{
 struct qed_bmap *rcid_map = &p_hwfn->p_rdma_info->real_cid_map;
 int wait_count = 0;






 while (bitmap_weight(rcid_map->bitmap, rcid_map->max_count)) {
  msleep(100);
  if (wait_count++ > 20) {
   DP_NOTICE(p_hwfn, "cid bitmap wait timed out\n");
   break;
  }
 }
 qed_spq_unregister_async_cb(p_hwfn, PROTOCOLID_ROCE);
}
