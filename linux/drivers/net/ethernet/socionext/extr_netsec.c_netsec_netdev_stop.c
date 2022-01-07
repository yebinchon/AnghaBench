
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netsec_priv {int dev; TYPE_1__* ndev; int napi; } ;
struct net_device {int phydev; } ;
struct TYPE_2__ {int irq; } ;


 int NETSEC_REG_INTEN_CLR ;
 int NETSEC_RING_RX ;
 int NETSEC_RING_TX ;
 int dma_wmb () ;
 int free_irq (int ,struct netsec_priv*) ;
 int napi_disable (int *) ;
 struct netsec_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (TYPE_1__*) ;
 int netsec_reset_hardware (struct netsec_priv*,int) ;
 int netsec_stop_gmac (struct netsec_priv*) ;
 int netsec_uninit_pkt_dring (struct netsec_priv*,int ) ;
 int netsec_write (struct netsec_priv*,int ,int ) ;
 int phy_disconnect (int ) ;
 int phy_stop (int ) ;
 int pm_runtime_put_sync (int ) ;

__attribute__((used)) static int netsec_netdev_stop(struct net_device *ndev)
{
 int ret;
 struct netsec_priv *priv = netdev_priv(ndev);

 netif_stop_queue(priv->ndev);
 dma_wmb();

 napi_disable(&priv->napi);

 netsec_write(priv, NETSEC_REG_INTEN_CLR, ~0);
 netsec_stop_gmac(priv);

 free_irq(priv->ndev->irq, priv);

 netsec_uninit_pkt_dring(priv, NETSEC_RING_TX);
 netsec_uninit_pkt_dring(priv, NETSEC_RING_RX);

 phy_stop(ndev->phydev);
 phy_disconnect(ndev->phydev);

 ret = netsec_reset_hardware(priv, 0);

 pm_runtime_put_sync(priv->dev);

 return ret;
}
