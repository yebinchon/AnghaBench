
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_hw {struct ath10k* priv; } ;
struct TYPE_4__ {int width; TYPE_1__* chan; } ;
struct ieee80211_chanctx_conf {TYPE_2__ def; } ;
struct ath10k {int conf_mutex; int data_lock; } ;
struct TYPE_3__ {int center_freq; } ;


 int ATH10K_DBG_MAC ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ,int ,struct ieee80211_chanctx_conf*) ;
 int ath10k_mac_update_rx_channel (struct ath10k*,int *,int *,int ) ;
 int ath10k_monitor_recalc (struct ath10k*) ;
 int ath10k_recalc_radar_detection (struct ath10k*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void
ath10k_mac_op_remove_chanctx(struct ieee80211_hw *hw,
        struct ieee80211_chanctx_conf *ctx)
{
 struct ath10k *ar = hw->priv;

 ath10k_dbg(ar, ATH10K_DBG_MAC,
     "mac chanctx remove freq %hu width %d ptr %pK\n",
     ctx->def.chan->center_freq, ctx->def.width, ctx);

 mutex_lock(&ar->conf_mutex);

 spin_lock_bh(&ar->data_lock);
 ath10k_mac_update_rx_channel(ar, ((void*)0), ((void*)0), 0);
 spin_unlock_bh(&ar->data_lock);

 ath10k_recalc_radar_detection(ar);
 ath10k_monitor_recalc(ar);

 mutex_unlock(&ar->conf_mutex);
}
