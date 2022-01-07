
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwl8k_priv {scalar_t__* txq_offset; scalar_t__ sram; TYPE_1__* txq; scalar_t__ ap_fw; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; } ;
struct TYPE_2__ {int txd_dma; } ;


 int iowrite32 (int ,scalar_t__) ;
 int mwl8k_tx_queues (struct mwl8k_priv*) ;
 int mwl8k_txq_init (struct ieee80211_hw*,int) ;

__attribute__((used)) static int mwl8k_init_txqs(struct ieee80211_hw *hw)
{
 struct mwl8k_priv *priv = hw->priv;
 int rc = 0;
 int i;

 for (i = 0; i < mwl8k_tx_queues(priv); i++) {
  rc = mwl8k_txq_init(hw, i);
  if (rc)
   break;
  if (priv->ap_fw)
   iowrite32(priv->txq[i].txd_dma,
      priv->sram + priv->txq_offset[i]);
 }
 return rc;
}
