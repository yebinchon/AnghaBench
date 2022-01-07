
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct ath9k_htc_sta {scalar_t__* tid_state; } ;
struct TYPE_2__ {int tx_lock; } ;
struct ath9k_htc_priv {TYPE_1__ tx; } ;


 scalar_t__ AGGR_STOP ;
 size_t ATH9K_HTC_MAX_TID ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static inline bool __ath9k_htc_check_tx_aggr(struct ath9k_htc_priv *priv,
          struct ath9k_htc_sta *ista, u8 tid)
{
 bool ret = 0;

 spin_lock_bh(&priv->tx.tx_lock);
 if ((tid < ATH9K_HTC_MAX_TID) && (ista->tid_state[tid] == AGGR_STOP))
  ret = 1;
 spin_unlock_bh(&priv->tx.tx_lock);

 return ret;
}
