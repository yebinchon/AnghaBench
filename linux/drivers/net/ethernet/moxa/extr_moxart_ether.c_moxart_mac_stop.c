
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct moxart_mac_priv_t {scalar_t__ base; int napi; } ;


 scalar_t__ REG_INTERRUPT_MASK ;
 scalar_t__ REG_MAC_CTRL ;
 int napi_disable (int *) ;
 struct moxart_mac_priv_t* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int moxart_mac_stop(struct net_device *ndev)
{
 struct moxart_mac_priv_t *priv = netdev_priv(ndev);

 napi_disable(&priv->napi);

 netif_stop_queue(ndev);


 writel(0, priv->base + REG_INTERRUPT_MASK);


 writel(0, priv->base + REG_MAC_CTRL);

 return 0;
}
