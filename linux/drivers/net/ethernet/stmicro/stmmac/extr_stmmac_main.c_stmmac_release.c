
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct stmmac_priv {scalar_t__ wol_irq; scalar_t__ lpi_irq; int ioaddr; TYPE_2__* tx_queue; TYPE_1__* plat; int phylink; int eee_ctrl_timer; scalar_t__ eee_enabled; } ;
struct net_device {scalar_t__ irq; } ;
struct TYPE_4__ {int txtimer; } ;
struct TYPE_3__ {size_t tx_queues_to_use; } ;


 int del_timer_sync (int *) ;
 int free_dma_desc_resources (struct stmmac_priv*) ;
 int free_irq (scalar_t__,struct net_device*) ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int phylink_disconnect_phy (int ) ;
 int phylink_stop (int ) ;
 int stmmac_disable_all_queues (struct stmmac_priv*) ;
 int stmmac_mac_set (struct stmmac_priv*,int ,int) ;
 int stmmac_release_ptp (struct stmmac_priv*) ;
 int stmmac_stop_all_dma (struct stmmac_priv*) ;
 int stmmac_stop_all_queues (struct stmmac_priv*) ;

__attribute__((used)) static int stmmac_release(struct net_device *dev)
{
 struct stmmac_priv *priv = netdev_priv(dev);
 u32 chan;

 if (priv->eee_enabled)
  del_timer_sync(&priv->eee_ctrl_timer);


 phylink_stop(priv->phylink);
 phylink_disconnect_phy(priv->phylink);

 stmmac_stop_all_queues(priv);

 stmmac_disable_all_queues(priv);

 for (chan = 0; chan < priv->plat->tx_queues_to_use; chan++)
  del_timer_sync(&priv->tx_queue[chan].txtimer);


 free_irq(dev->irq, dev);
 if (priv->wol_irq != dev->irq)
  free_irq(priv->wol_irq, dev);
 if (priv->lpi_irq > 0)
  free_irq(priv->lpi_irq, dev);


 stmmac_stop_all_dma(priv);


 free_dma_desc_resources(priv);


 stmmac_mac_set(priv, priv->ioaddr, 0);

 netif_carrier_off(dev);

 stmmac_release_ptp(priv);

 return 0;
}
