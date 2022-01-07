
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_lock; int tx_slot; } ;
struct ath9k_htc_priv {TYPE_1__ tx; } ;


 int ENOBUFS ;
 int MAX_TX_BUF_NUM ;
 int __set_bit (int,int ) ;
 int find_first_zero_bit (int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int ath9k_htc_tx_get_slot(struct ath9k_htc_priv *priv)
{
 int slot;

 spin_lock_bh(&priv->tx.tx_lock);
 slot = find_first_zero_bit(priv->tx.tx_slot, MAX_TX_BUF_NUM);
 if (slot >= MAX_TX_BUF_NUM) {
  spin_unlock_bh(&priv->tx.tx_lock);
  return -ENOBUFS;
 }
 __set_bit(slot, priv->tx.tx_slot);
 spin_unlock_bh(&priv->tx.tx_lock);

 return slot;
}
