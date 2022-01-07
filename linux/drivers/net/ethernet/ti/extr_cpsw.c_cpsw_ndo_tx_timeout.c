
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tx_errors; } ;
struct net_device {TYPE_2__ stats; } ;
struct cpsw_priv {struct cpsw_common* cpsw; } ;
struct cpsw_common {int tx_ch_num; TYPE_1__* txv; } ;
struct TYPE_3__ {int ch; } ;


 int cpdma_chan_start (int ) ;
 int cpdma_chan_stop (int ) ;
 int cpsw_err (struct cpsw_priv*,int ,char*) ;
 int cpsw_intr_disable (struct cpsw_common*) ;
 int cpsw_intr_enable (struct cpsw_common*) ;
 struct cpsw_priv* netdev_priv (struct net_device*) ;
 int netif_trans_update (struct net_device*) ;
 int netif_tx_wake_all_queues (struct net_device*) ;
 int tx_err ;

__attribute__((used)) static void cpsw_ndo_tx_timeout(struct net_device *ndev)
{
 struct cpsw_priv *priv = netdev_priv(ndev);
 struct cpsw_common *cpsw = priv->cpsw;
 int ch;

 cpsw_err(priv, tx_err, "transmit timeout, restarting dma\n");
 ndev->stats.tx_errors++;
 cpsw_intr_disable(cpsw);
 for (ch = 0; ch < cpsw->tx_ch_num; ch++) {
  cpdma_chan_stop(cpsw->txv[ch].ch);
  cpdma_chan_start(cpsw->txv[ch].ch);
 }

 cpsw_intr_enable(cpsw);
 netif_trans_update(ndev);
 netif_tx_wake_all_queues(ndev);
}
