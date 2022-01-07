
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct scatterlist {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_9__ {int tx_no_mem; int tx_full_ring; } ;
struct cfv_info {int watermark_tx; TYPE_7__* ndev; int tx_lock; TYPE_3__* vq_tx; scalar_t__ reserved_mem; int reserved_size; scalar_t__ genpool; TYPE_1__ stats; } ;
struct buf_info {int dummy; } ;
struct TYPE_10__ {int tx_dropped; int tx_bytes; int tx_packets; } ;
struct TYPE_12__ {TYPE_2__ stats; } ;
struct TYPE_11__ {scalar_t__ num_free; } ;


 int GFP_ATOMIC ;
 int NETDEV_TX_OK ;
 struct buf_info* cfv_alloc_and_copy_to_shm (struct cfv_info*,struct sk_buff*,struct scatterlist*) ;
 int cfv_release_used_buf (TYPE_3__*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int free_buf_info (struct cfv_info*,struct buf_info*) ;
 int gen_pool_free (scalar_t__,scalar_t__,int ) ;
 struct cfv_info* netdev_priv (struct net_device*) ;
 int netdev_warn (TYPE_7__*,char*,...) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 scalar_t__ num_present_cpus () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int virtqueue_add_outbuf (TYPE_3__*,struct scatterlist*,int,struct buf_info*,int ) ;
 int virtqueue_enable_cb (TYPE_3__*) ;
 int virtqueue_get_vring_size (TYPE_3__*) ;
 int virtqueue_kick (TYPE_3__*) ;

__attribute__((used)) static int cfv_netdev_tx(struct sk_buff *skb, struct net_device *netdev)
{
 struct cfv_info *cfv = netdev_priv(netdev);
 struct buf_info *buf_info;
 struct scatterlist sg;
 unsigned long flags;
 bool flow_off = 0;
 int ret;


 cfv_release_used_buf(cfv->vq_tx);
 spin_lock_irqsave(&cfv->tx_lock, flags);






 if (unlikely(cfv->vq_tx->num_free <= num_present_cpus())) {
  flow_off = 1;
  cfv->stats.tx_full_ring++;
 }




 buf_info = cfv_alloc_and_copy_to_shm(cfv, skb, &sg);
 if (unlikely(!buf_info)) {
  cfv->stats.tx_no_mem++;
  flow_off = 1;

  if (cfv->reserved_mem && cfv->genpool) {
   gen_pool_free(cfv->genpool, cfv->reserved_mem,
          cfv->reserved_size);
   cfv->reserved_mem = 0;
   buf_info = cfv_alloc_and_copy_to_shm(cfv, skb, &sg);
  }
 }

 if (unlikely(flow_off)) {

  cfv->watermark_tx = virtqueue_get_vring_size(cfv->vq_tx) / 4;

  virtqueue_enable_cb(cfv->vq_tx);
  netif_tx_stop_all_queues(netdev);
 }

 if (unlikely(!buf_info)) {

  netdev_warn(cfv->ndev, "Out of gen_pool memory\n");
  goto err;
 }

 ret = virtqueue_add_outbuf(cfv->vq_tx, &sg, 1, buf_info, GFP_ATOMIC);
 if (unlikely((ret < 0))) {

  netdev_warn(cfv->ndev, "Failed adding buffer to TX vring:%d\n",
       ret);
  goto err;
 }


 cfv->ndev->stats.tx_packets++;
 cfv->ndev->stats.tx_bytes += skb->len;
 spin_unlock_irqrestore(&cfv->tx_lock, flags);


 virtqueue_kick(cfv->vq_tx);

 dev_kfree_skb(skb);
 return NETDEV_TX_OK;
err:
 spin_unlock_irqrestore(&cfv->tx_lock, flags);
 cfv->ndev->stats.tx_dropped++;
 free_buf_info(cfv, buf_info);
 dev_kfree_skb(skb);
 return NETDEV_TX_OK;
}
