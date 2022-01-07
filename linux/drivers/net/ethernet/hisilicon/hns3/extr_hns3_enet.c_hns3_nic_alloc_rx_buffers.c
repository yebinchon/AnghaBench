
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int non_reuse_pg; int sw_err_cnt; int reuse_pg_cnt; } ;
struct hns3_enet_ring {size_t next_to_use; TYPE_4__* tqp; int syncp; TYPE_3__ stats; TYPE_2__* tqp_vector; struct hns3_desc_cb* desc_cb; } ;
struct hns3_desc_cb {scalar_t__ reuse_flag; } ;
struct TYPE_8__ {scalar_t__ io_base; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_6__ {TYPE_1__ napi; } ;


 scalar_t__ HNS3_RING_RX_RING_HEAD_REG ;
 int hns3_replace_buffer (struct hns3_enet_ring*,size_t,struct hns3_desc_cb*) ;
 int hns3_reserve_buffer_map (struct hns3_enet_ring*,struct hns3_desc_cb*) ;
 int hns3_reuse_buffer (struct hns3_enet_ring*,size_t) ;
 int hns3_rl_err (int ,char*,int) ;
 int next_to_use ;
 int ring_ptr_move_fw (struct hns3_enet_ring*,int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 int wmb () ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void hns3_nic_alloc_rx_buffers(struct hns3_enet_ring *ring,
          int cleand_count)
{
 struct hns3_desc_cb *desc_cb;
 struct hns3_desc_cb res_cbs;
 int i, ret;

 for (i = 0; i < cleand_count; i++) {
  desc_cb = &ring->desc_cb[ring->next_to_use];
  if (desc_cb->reuse_flag) {
   u64_stats_update_begin(&ring->syncp);
   ring->stats.reuse_pg_cnt++;
   u64_stats_update_end(&ring->syncp);

   hns3_reuse_buffer(ring, ring->next_to_use);
  } else {
   ret = hns3_reserve_buffer_map(ring, &res_cbs);
   if (ret) {
    u64_stats_update_begin(&ring->syncp);
    ring->stats.sw_err_cnt++;
    u64_stats_update_end(&ring->syncp);

    hns3_rl_err(ring->tqp_vector->napi.dev,
         "alloc rx buffer failed: %d\n",
         ret);
    break;
   }
   hns3_replace_buffer(ring, ring->next_to_use, &res_cbs);

   u64_stats_update_begin(&ring->syncp);
   ring->stats.non_reuse_pg++;
   u64_stats_update_end(&ring->syncp);
  }

  ring_ptr_move_fw(ring, next_to_use);
 }

 wmb();
 writel_relaxed(i, ring->tqp->io_base + HNS3_RING_RX_RING_HEAD_REG);
}
