
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sxgbe_priv_data {int sxgbe_clk; int ioaddr; TYPE_3__* hw; int napi; int eee_ctrl_timer; scalar_t__ eee_enabled; } ;
struct net_device {scalar_t__ phydev; } ;
struct TYPE_6__ {TYPE_2__* mac; TYPE_1__* dma; } ;
struct TYPE_5__ {int (* enable_rx ) (int ,int) ;int (* enable_tx ) (int ,int) ;} ;
struct TYPE_4__ {int (* stop_rx ) (int ,int ) ;int (* stop_tx ) (int ,int ) ;} ;


 int SXGBE_RX_QUEUES ;
 int SXGBE_TX_QUEUES ;
 int clk_disable_unprepare (int ) ;
 int del_timer_sync (int *) ;
 int free_dma_desc_resources (struct sxgbe_priv_data*) ;
 int napi_disable (int *) ;
 struct sxgbe_priv_data* netdev_priv (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int phy_disconnect (scalar_t__) ;
 int phy_stop (scalar_t__) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int) ;
 int stub4 (int ,int) ;
 int sxgbe_disable_mtl_engine (struct sxgbe_priv_data*) ;
 int sxgbe_tx_del_timer (struct sxgbe_priv_data*) ;

__attribute__((used)) static int sxgbe_release(struct net_device *dev)
{
 struct sxgbe_priv_data *priv = netdev_priv(dev);

 if (priv->eee_enabled)
  del_timer_sync(&priv->eee_ctrl_timer);


 if (dev->phydev) {
  phy_stop(dev->phydev);
  phy_disconnect(dev->phydev);
 }

 netif_tx_stop_all_queues(dev);

 napi_disable(&priv->napi);


 sxgbe_tx_del_timer(priv);


 priv->hw->dma->stop_tx(priv->ioaddr, SXGBE_TX_QUEUES);
 priv->hw->dma->stop_rx(priv->ioaddr, SXGBE_RX_QUEUES);


 sxgbe_disable_mtl_engine(priv);


 free_dma_desc_resources(priv);


 priv->hw->mac->enable_tx(priv->ioaddr, 0);
 priv->hw->mac->enable_rx(priv->ioaddr, 0);

 clk_disable_unprepare(priv->sxgbe_clk);

 return 0;
}
