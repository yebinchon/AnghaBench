
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct virtnet_info {int max_queue_pairs; TYPE_4__* ctrl; TYPE_4__* sq; TYPE_2__* rq; int dev; int refill; } ;
struct TYPE_8__ {int syncp; } ;
struct TYPE_9__ {TYPE_3__ stats; int sg; int napi; } ;
struct TYPE_6__ {int syncp; } ;
struct TYPE_7__ {TYPE_1__ stats; int mrg_avg_pkt_len; int sg; int napi; int * pages; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int ewma_pkt_len_init (int *) ;
 void* kcalloc (int,int,int ) ;
 int kfree (TYPE_4__*) ;
 TYPE_4__* kzalloc (int,int ) ;
 scalar_t__ napi_tx ;
 int napi_weight ;
 int netif_napi_add (int ,int *,int ,int ) ;
 int netif_tx_napi_add (int ,int *,int ,int ) ;
 int refill_work ;
 int sg_init_table (int ,int ) ;
 int u64_stats_init (int *) ;
 int virtnet_poll ;
 int virtnet_poll_tx ;

__attribute__((used)) static int virtnet_alloc_queues(struct virtnet_info *vi)
{
 int i;

 vi->ctrl = kzalloc(sizeof(*vi->ctrl), GFP_KERNEL);
 if (!vi->ctrl)
  goto err_ctrl;
 vi->sq = kcalloc(vi->max_queue_pairs, sizeof(*vi->sq), GFP_KERNEL);
 if (!vi->sq)
  goto err_sq;
 vi->rq = kcalloc(vi->max_queue_pairs, sizeof(*vi->rq), GFP_KERNEL);
 if (!vi->rq)
  goto err_rq;

 INIT_DELAYED_WORK(&vi->refill, refill_work);
 for (i = 0; i < vi->max_queue_pairs; i++) {
  vi->rq[i].pages = ((void*)0);
  netif_napi_add(vi->dev, &vi->rq[i].napi, virtnet_poll,
          napi_weight);
  netif_tx_napi_add(vi->dev, &vi->sq[i].napi, virtnet_poll_tx,
      napi_tx ? napi_weight : 0);

  sg_init_table(vi->rq[i].sg, ARRAY_SIZE(vi->rq[i].sg));
  ewma_pkt_len_init(&vi->rq[i].mrg_avg_pkt_len);
  sg_init_table(vi->sq[i].sg, ARRAY_SIZE(vi->sq[i].sg));

  u64_stats_init(&vi->rq[i].stats.syncp);
  u64_stats_init(&vi->sq[i].stats.syncp);
 }

 return 0;

err_rq:
 kfree(vi->sq);
err_sq:
 kfree(vi->ctrl);
err_ctrl:
 return -ENOMEM;
}
