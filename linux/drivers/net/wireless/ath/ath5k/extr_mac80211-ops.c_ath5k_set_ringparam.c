
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef size_t u16 ;
struct ieee80211_hw {struct ath5k_hw* priv; } ;
struct ath5k_hw {TYPE_1__* txqs; } ;
struct TYPE_2__ {scalar_t__ qnum; scalar_t__ txq_max; scalar_t__ txq_len; int setup; } ;


 scalar_t__ AR5K_TX_QUEUE_ID_DATA_MAX ;
 scalar_t__ AR5K_TX_QUEUE_ID_DATA_MIN ;
 size_t ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ ATH5K_TXQ_LEN_MAX ;
 scalar_t__ ATH_RXBUF ;
 int EINVAL ;
 int ieee80211_stop_queue (struct ieee80211_hw*,scalar_t__) ;

__attribute__((used)) static int ath5k_set_ringparam(struct ieee80211_hw *hw, u32 tx, u32 rx)
{
 struct ath5k_hw *ah = hw->priv;
 u16 qnum;


 if (rx != ATH_RXBUF)
  return -EINVAL;


 if (!tx || tx > ATH5K_TXQ_LEN_MAX)
  return -EINVAL;

 for (qnum = 0; qnum < ARRAY_SIZE(ah->txqs); qnum++) {
  if (!ah->txqs[qnum].setup)
   continue;
  if (ah->txqs[qnum].qnum < AR5K_TX_QUEUE_ID_DATA_MIN ||
      ah->txqs[qnum].qnum > AR5K_TX_QUEUE_ID_DATA_MAX)
   continue;

  ah->txqs[qnum].txq_max = tx;
  if (ah->txqs[qnum].txq_len >= ah->txqs[qnum].txq_max)
   ieee80211_stop_queue(hw, ah->txqs[qnum].qnum);
 }

 return 0;
}
