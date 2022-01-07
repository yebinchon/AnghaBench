
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_lock; } ;
struct ath10k {TYPE_1__ htt; } ;


 int __ath10k_htt_tx_txq_sync (struct ath10k*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ath10k_htt_tx_txq_sync(struct ath10k *ar)
{
 spin_lock_bh(&ar->htt.tx_lock);
 __ath10k_htt_tx_txq_sync(ar);
 spin_unlock_bh(&ar->htt.tx_lock);
}
