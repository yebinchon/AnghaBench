
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl8k_tx_queue {int * txd; int txd_dma; int * skb; } ;
struct mwl8k_tx_desc {int dummy; } ;
struct mwl8k_priv {int pdev; struct mwl8k_tx_queue* txq; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; } ;


 int INT_MAX ;
 int MWL8K_TX_DESCS ;
 int kfree (int *) ;
 int mwl8k_txq_reclaim (struct ieee80211_hw*,int,int ,int) ;
 int pci_free_consistent (int ,int,int *,int ) ;

__attribute__((used)) static void mwl8k_txq_deinit(struct ieee80211_hw *hw, int index)
{
 struct mwl8k_priv *priv = hw->priv;
 struct mwl8k_tx_queue *txq = priv->txq + index;

 if (txq->txd == ((void*)0))
  return;

 mwl8k_txq_reclaim(hw, index, INT_MAX, 1);

 kfree(txq->skb);
 txq->skb = ((void*)0);

 pci_free_consistent(priv->pdev,
       MWL8K_TX_DESCS * sizeof(struct mwl8k_tx_desc),
       txq->txd, txq->txd_dma);
 txq->txd = ((void*)0);
}
