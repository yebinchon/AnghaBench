
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int alloc_phys; int alloc; int alloc_len; } ;
struct TYPE_4__ {int alloc_phys; int alloc; int alloc_len; } ;
struct ec_bhf_priv {TYPE_1__ rx_buf; TYPE_2__ tx_buf; int hrtimer; } ;
struct device {int dummy; } ;


 struct device* PRIV_TO_DEV (struct ec_bhf_priv*) ;
 int dma_free_coherent (struct device*,int ,int ,int ) ;
 int ec_bhf_reset (struct ec_bhf_priv*) ;
 int hrtimer_cancel (int *) ;
 struct ec_bhf_priv* netdev_priv (struct net_device*) ;
 int netif_tx_disable (struct net_device*) ;

__attribute__((used)) static int ec_bhf_stop(struct net_device *net_dev)
{
 struct ec_bhf_priv *priv = netdev_priv(net_dev);
 struct device *dev = PRIV_TO_DEV(priv);

 hrtimer_cancel(&priv->hrtimer);

 ec_bhf_reset(priv);

 netif_tx_disable(net_dev);

 dma_free_coherent(dev, priv->tx_buf.alloc_len,
     priv->tx_buf.alloc, priv->tx_buf.alloc_phys);
 dma_free_coherent(dev, priv->rx_buf.alloc_len,
     priv->rx_buf.alloc, priv->rx_buf.alloc_phys);

 return 0;
}
