
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct ieee80211_hw {struct ath5k_hw* priv; } ;
struct ath_common {int keymax; } ;
struct ath5k_hw {int imask; int ah_ack_bitrate_high; int tx_complete_work; TYPE_3__* hw; int status; int lock; int ** bslot; int curchan; int opmode; } ;
struct TYPE_4__ {int chan; } ;
struct TYPE_5__ {TYPE_1__ chandef; } ;
struct TYPE_6__ {TYPE_2__ conf; } ;


 int AR5K_INT_FATAL ;
 int AR5K_INT_GLOBAL ;
 int AR5K_INT_MIB ;
 int AR5K_INT_RXEOL ;
 int AR5K_INT_RXERR ;
 int AR5K_INT_RXOK ;
 int AR5K_INT_RXORN ;
 int AR5K_INT_TXDESC ;
 int AR5K_INT_TXEOL ;
 int ARRAY_SIZE (int **) ;
 int ATH5K_DBG (struct ath5k_hw*,int ,char*,int ) ;
 int ATH5K_DEBUG_RESET ;
 int ATH5K_TX_COMPLETE_POLL_INT ;
 int ATH_STAT_STARTED ;
 struct ath_common* ath5k_hw_common (struct ath5k_hw*) ;
 int ath5k_modparam_no_hw_rfkill_switch ;
 int ath5k_reset (struct ath5k_hw*,int *,int) ;
 int ath5k_rfkill_hw_start (struct ath5k_hw*) ;
 int ath5k_stop_locked (struct ath5k_hw*) ;
 int ath_hw_keyreset (struct ath_common*,int ) ;
 int ieee80211_queue_delayed_work (TYPE_3__*,int *,int ) ;
 int msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int ) ;

int ath5k_start(struct ieee80211_hw *hw)
{
 struct ath5k_hw *ah = hw->priv;
 struct ath_common *common = ath5k_hw_common(ah);
 int ret, i;

 mutex_lock(&ah->lock);

 ATH5K_DBG(ah, ATH5K_DEBUG_RESET, "mode %d\n", ah->opmode);





 ath5k_stop_locked(ah);
 ah->curchan = ah->hw->conf.chandef.chan;
 ah->imask = AR5K_INT_RXOK
  | AR5K_INT_RXERR
  | AR5K_INT_RXEOL
  | AR5K_INT_RXORN
  | AR5K_INT_TXDESC
  | AR5K_INT_TXEOL
  | AR5K_INT_FATAL
  | AR5K_INT_GLOBAL
  | AR5K_INT_MIB;

 ret = ath5k_reset(ah, ((void*)0), 0);
 if (ret)
  goto done;

 if (!ath5k_modparam_no_hw_rfkill_switch)
  ath5k_rfkill_hw_start(ah);





 for (i = 0; i < common->keymax; i++)
  ath_hw_keyreset(common, (u16) i);



 ah->ah_ack_bitrate_high = 1;

 for (i = 0; i < ARRAY_SIZE(ah->bslot); i++)
  ah->bslot[i] = ((void*)0);

 ret = 0;
done:
 mutex_unlock(&ah->lock);

 set_bit(ATH_STAT_STARTED, ah->status);
 ieee80211_queue_delayed_work(ah->hw, &ah->tx_complete_work,
   msecs_to_jiffies(ATH5K_TX_COMPLETE_POLL_INT));

 return ret;
}
