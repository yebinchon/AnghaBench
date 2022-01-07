
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int sw_err_cnt; } ;
struct hns3_enet_ring {size_t next_to_use; size_t next_to_clean; scalar_t__ pending_buf; int * skb; TYPE_5__* tqp; int syncp; TYPE_2__ stats; TYPE_1__* desc_cb; } ;
struct hns3_desc_cb {int dummy; } ;
struct TYPE_10__ {TYPE_4__* handle; } ;
struct TYPE_8__ {int netdev; } ;
struct TYPE_9__ {TYPE_3__ kinfo; } ;
struct TYPE_6__ {int reuse_flag; } ;


 int dev_kfree_skb_any (int *) ;
 int hns3_replace_buffer (struct hns3_enet_ring*,size_t,struct hns3_desc_cb*) ;
 int hns3_reserve_buffer_map (struct hns3_enet_ring*,struct hns3_desc_cb*) ;
 int netdev_warn (int ,char*,int) ;
 int next_to_use ;
 int ring_ptr_move_fw (struct hns3_enet_ring*,int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static int hns3_clear_rx_ring(struct hns3_enet_ring *ring)
{
 struct hns3_desc_cb res_cbs;
 int ret;

 while (ring->next_to_use != ring->next_to_clean) {




  if (!ring->desc_cb[ring->next_to_use].reuse_flag) {
   ret = hns3_reserve_buffer_map(ring, &res_cbs);
   if (ret) {
    u64_stats_update_begin(&ring->syncp);
    ring->stats.sw_err_cnt++;
    u64_stats_update_end(&ring->syncp);



    netdev_warn(ring->tqp->handle->kinfo.netdev,
         "reserve buffer map failed, ret = %d\n",
         ret);
    return ret;
   }
   hns3_replace_buffer(ring, ring->next_to_use, &res_cbs);
  }
  ring_ptr_move_fw(ring, next_to_use);
 }


 if (ring->skb) {
  dev_kfree_skb_any(ring->skb);
  ring->skb = ((void*)0);
  ring->pending_buf = 0;
 }

 return 0;
}
