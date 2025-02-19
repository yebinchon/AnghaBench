
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
struct virtnet_rq_stats {int packets; } ;
struct virtnet_info {int refill; scalar_t__ mergeable_rx_bufs; int big_packets; } ;
struct TYPE_8__ {int syncp; } ;
struct receive_queue {TYPE_2__ stats; TYPE_3__* vq; } ;
struct TYPE_10__ {size_t offset; } ;
struct TYPE_9__ {int num_free; TYPE_1__* vdev; } ;
struct TYPE_7__ {struct virtnet_info* priv; } ;


 int GFP_ATOMIC ;
 int VIRTNET_RQ_STATS_LEN ;
 int min (unsigned int,int ) ;
 int receive_buf (struct virtnet_info*,struct receive_queue*,void*,unsigned int,void*,unsigned int*,struct virtnet_rq_stats*) ;
 int schedule_delayed_work (int *,int ) ;
 int try_fill_recv (struct virtnet_info*,struct receive_queue*,int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 TYPE_6__* virtnet_rq_stats_desc ;
 void* virtqueue_get_buf (TYPE_3__*,unsigned int*) ;
 void* virtqueue_get_buf_ctx (TYPE_3__*,unsigned int*,void**) ;
 int virtqueue_get_vring_size (TYPE_3__*) ;

__attribute__((used)) static int virtnet_receive(struct receive_queue *rq, int budget,
      unsigned int *xdp_xmit)
{
 struct virtnet_info *vi = rq->vq->vdev->priv;
 struct virtnet_rq_stats stats = {};
 unsigned int len;
 void *buf;
 int i;

 if (!vi->big_packets || vi->mergeable_rx_bufs) {
  void *ctx;

  while (stats.packets < budget &&
         (buf = virtqueue_get_buf_ctx(rq->vq, &len, &ctx))) {
   receive_buf(vi, rq, buf, len, ctx, xdp_xmit, &stats);
   stats.packets++;
  }
 } else {
  while (stats.packets < budget &&
         (buf = virtqueue_get_buf(rq->vq, &len)) != ((void*)0)) {
   receive_buf(vi, rq, buf, len, ((void*)0), xdp_xmit, &stats);
   stats.packets++;
  }
 }

 if (rq->vq->num_free > min((unsigned int)budget, virtqueue_get_vring_size(rq->vq)) / 2) {
  if (!try_fill_recv(vi, rq, GFP_ATOMIC))
   schedule_delayed_work(&vi->refill, 0);
 }

 u64_stats_update_begin(&rq->stats.syncp);
 for (i = 0; i < VIRTNET_RQ_STATS_LEN; i++) {
  size_t offset = virtnet_rq_stats_desc[i].offset;
  u64 *item;

  item = (u64 *)((u8 *)&rq->stats + offset);
  *item += *(u64 *)((u8 *)&stats + offset);
 }
 u64_stats_update_end(&rq->stats.syncp);

 return stats.packets;
}
