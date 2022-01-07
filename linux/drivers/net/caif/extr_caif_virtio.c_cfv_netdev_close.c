
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct cfv_info {int tx_lock; int vq_tx; int napi; int vr_rx; } ;
struct buf_info {int dummy; } ;


 int cfv_destroy_genpool (struct cfv_info*) ;
 int cfv_release_used_buf (int ) ;
 int free_buf_info (struct cfv_info*,struct buf_info*) ;
 int napi_disable (int *) ;
 struct cfv_info* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct buf_info* virtqueue_detach_unused_buf (int ) ;
 int virtqueue_disable_cb (int ) ;
 int vringh_notify_disable_kern (int ) ;

__attribute__((used)) static int cfv_netdev_close(struct net_device *netdev)
{
 struct cfv_info *cfv = netdev_priv(netdev);
 unsigned long flags;
 struct buf_info *buf_info;


 netif_carrier_off(netdev);
 virtqueue_disable_cb(cfv->vq_tx);
 vringh_notify_disable_kern(cfv->vr_rx);
 napi_disable(&cfv->napi);


 cfv_release_used_buf(cfv->vq_tx);
 spin_lock_irqsave(&cfv->tx_lock, flags);
 while ((buf_info = virtqueue_detach_unused_buf(cfv->vq_tx)))
  free_buf_info(cfv, buf_info);
 spin_unlock_irqrestore(&cfv->tx_lock, flags);


 cfv_destroy_genpool(cfv);
 return 0;
}
