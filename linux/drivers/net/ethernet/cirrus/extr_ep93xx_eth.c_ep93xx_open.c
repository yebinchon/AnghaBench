
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;
struct ep93xx_priv {int napi; int irq; scalar_t__ tx_pending; int tx_pending_lock; scalar_t__ tx_pointer; scalar_t__ tx_clean_pointer; scalar_t__ rx_pointer; int rx_lock; } ;


 int EIO ;
 int ENOMEM ;
 int IRQF_SHARED ;
 int REG_GIINTMSK ;
 int REG_GIINTMSK_ENABLE ;
 scalar_t__ ep93xx_alloc_buffers (struct ep93xx_priv*) ;
 int ep93xx_free_buffers (struct ep93xx_priv*) ;
 int ep93xx_irq ;
 scalar_t__ ep93xx_start_hw (struct net_device*) ;
 int ep93xx_stop_hw (struct net_device*) ;
 int napi_disable (int *) ;
 int napi_enable (int *) ;
 struct ep93xx_priv* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;
 int spin_lock_init (int *) ;
 int wrl (struct ep93xx_priv*,int ,int ) ;

__attribute__((used)) static int ep93xx_open(struct net_device *dev)
{
 struct ep93xx_priv *ep = netdev_priv(dev);
 int err;

 if (ep93xx_alloc_buffers(ep))
  return -ENOMEM;

 napi_enable(&ep->napi);

 if (ep93xx_start_hw(dev)) {
  napi_disable(&ep->napi);
  ep93xx_free_buffers(ep);
  return -EIO;
 }

 spin_lock_init(&ep->rx_lock);
 ep->rx_pointer = 0;
 ep->tx_clean_pointer = 0;
 ep->tx_pointer = 0;
 spin_lock_init(&ep->tx_pending_lock);
 ep->tx_pending = 0;

 err = request_irq(ep->irq, ep93xx_irq, IRQF_SHARED, dev->name, dev);
 if (err) {
  napi_disable(&ep->napi);
  ep93xx_stop_hw(dev);
  ep93xx_free_buffers(ep);
  return err;
 }

 wrl(ep, REG_GIINTMSK, REG_GIINTMSK_ENABLE);

 netif_start_queue(dev);

 return 0;
}
