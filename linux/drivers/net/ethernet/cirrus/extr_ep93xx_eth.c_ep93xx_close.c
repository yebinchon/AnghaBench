
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ep93xx_priv {int irq; int napi; } ;


 int REG_GIINTMSK ;
 int ep93xx_free_buffers (struct ep93xx_priv*) ;
 int ep93xx_stop_hw (struct net_device*) ;
 int free_irq (int ,struct net_device*) ;
 int napi_disable (int *) ;
 struct ep93xx_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int wrl (struct ep93xx_priv*,int ,int ) ;

__attribute__((used)) static int ep93xx_close(struct net_device *dev)
{
 struct ep93xx_priv *ep = netdev_priv(dev);

 napi_disable(&ep->napi);
 netif_stop_queue(dev);

 wrl(ep, REG_GIINTMSK, 0);
 free_irq(ep->irq, dev);
 ep93xx_stop_hw(dev);
 ep93xx_free_buffers(ep);

 return 0;
}
