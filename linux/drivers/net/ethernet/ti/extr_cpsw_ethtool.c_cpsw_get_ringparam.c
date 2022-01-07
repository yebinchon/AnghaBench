
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_ringparam {int rx_pending; void* rx_max_pending; int tx_pending; void* tx_max_pending; } ;
struct cpsw_priv {struct cpsw_common* cpsw; } ;
struct cpsw_common {void* descs_pool_size; int dma; } ;


 void* CPSW_MAX_QUEUES ;
 int cpdma_get_num_rx_descs (int ) ;
 int cpdma_get_num_tx_descs (int ) ;
 struct cpsw_priv* netdev_priv (struct net_device*) ;

void cpsw_get_ringparam(struct net_device *ndev,
   struct ethtool_ringparam *ering)
{
 struct cpsw_priv *priv = netdev_priv(ndev);
 struct cpsw_common *cpsw = priv->cpsw;


 ering->tx_max_pending = cpsw->descs_pool_size - CPSW_MAX_QUEUES;
 ering->tx_pending = cpdma_get_num_tx_descs(cpsw->dma);
 ering->rx_max_pending = cpsw->descs_pool_size - CPSW_MAX_QUEUES;
 ering->rx_pending = cpdma_get_num_rx_descs(cpsw->dma);
}
