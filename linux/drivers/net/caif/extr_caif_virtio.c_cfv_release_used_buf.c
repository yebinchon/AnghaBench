
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virtqueue {scalar_t__ num_free; TYPE_1__* vdev; } ;
struct TYPE_4__ {int tx_flow_on; } ;
struct cfv_info {scalar_t__ watermark_tx; scalar_t__ reserved_mem; struct virtqueue* vq_tx; TYPE_2__ stats; int ndev; int reserved_size; scalar_t__ genpool; int tx_lock; } ;
struct buf_info {int dummy; } ;
struct TYPE_3__ {struct cfv_info* priv; } ;


 int BUG_ON (int) ;
 int WARN_ON (int) ;
 int free_buf_info (struct cfv_info*,struct buf_info*) ;
 scalar_t__ gen_pool_alloc (scalar_t__,int ) ;
 int netif_tx_wake_all_queues (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int virtqueue_disable_cb (struct virtqueue*) ;
 struct buf_info* virtqueue_get_buf (struct virtqueue*,unsigned int*) ;
 int virtqueue_get_vring_size (struct virtqueue*) ;

__attribute__((used)) static void cfv_release_used_buf(struct virtqueue *vq_tx)
{
 struct cfv_info *cfv = vq_tx->vdev->priv;
 unsigned long flags;

 BUG_ON(vq_tx != cfv->vq_tx);

 for (;;) {
  unsigned int len;
  struct buf_info *buf_info;


  spin_lock_irqsave(&cfv->tx_lock, flags);
  buf_info = virtqueue_get_buf(vq_tx, &len);
  spin_unlock_irqrestore(&cfv->tx_lock, flags);


  if (!buf_info)
   break;

  free_buf_info(cfv, buf_info);





  if (cfv->vq_tx->num_free <= cfv->watermark_tx)
   continue;


  if (cfv->reserved_mem == 0 && cfv->genpool)
   cfv->reserved_mem =
    gen_pool_alloc(cfv->genpool,
            cfv->reserved_size);


  if (cfv->reserved_mem) {
   cfv->watermark_tx =
    virtqueue_get_vring_size(cfv->vq_tx);
   netif_tx_wake_all_queues(cfv->ndev);



   virtqueue_disable_cb(cfv->vq_tx);
   ++cfv->stats.tx_flow_on;
  } else {

   WARN_ON(cfv->watermark_tx >
          virtqueue_get_vring_size(cfv->vq_tx));
   cfv->watermark_tx +=
    virtqueue_get_vring_size(cfv->vq_tx) / 4;
  }
 }
}
