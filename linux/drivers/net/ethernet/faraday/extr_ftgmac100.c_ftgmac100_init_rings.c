
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftgmac100_txdes {int txdes0; } ;
struct ftgmac100_rxdes {int rxdes0; int rxdes3; } ;
struct ftgmac100 {int rx_q_entries; int new_rx_q_entries; int tx_q_entries; int new_tx_q_entries; int txdes0_edotr_mask; struct ftgmac100_txdes* txdes; int rxdes0_edorr_mask; int rx_scratch_dma; struct ftgmac100_rxdes* rxdes; } ;


 int MIN_RX_QUEUE_ENTRIES ;
 scalar_t__ WARN_ON (int) ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static void ftgmac100_init_rings(struct ftgmac100 *priv)
{
 struct ftgmac100_rxdes *rxdes = ((void*)0);
 struct ftgmac100_txdes *txdes = ((void*)0);
 int i;


 priv->rx_q_entries = priv->new_rx_q_entries;
 priv->tx_q_entries = priv->new_tx_q_entries;

 if (WARN_ON(priv->rx_q_entries < MIN_RX_QUEUE_ENTRIES))
  return;


 for (i = 0; i < priv->rx_q_entries; i++) {
  rxdes = &priv->rxdes[i];
  rxdes->rxdes0 = 0;
  rxdes->rxdes3 = cpu_to_le32(priv->rx_scratch_dma);
 }

 rxdes->rxdes0 |= cpu_to_le32(priv->rxdes0_edorr_mask);

 if (WARN_ON(priv->tx_q_entries < MIN_RX_QUEUE_ENTRIES))
  return;


 for (i = 0; i < priv->tx_q_entries; i++) {
  txdes = &priv->txdes[i];
  txdes->txdes0 = 0;
 }
 txdes->txdes0 |= cpu_to_le32(priv->txdes0_edotr_mask);
}
