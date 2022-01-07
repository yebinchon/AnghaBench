
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_vif_chanctx_switch {TYPE_1__* new_ctx; } ;
struct TYPE_4__ {int * chan; } ;
struct ieee80211_chanctx_conf {TYPE_2__ def; } ;
struct cfg80211_chan_def {int * chan; } ;
struct ath10k {scalar_t__ state; int * rx_channel; int hw; int data_lock; int conf_mutex; } ;
struct TYPE_3__ {struct cfg80211_chan_def def; } ;


 scalar_t__ ATH10K_STATE_RESTARTED ;
 int WARN_ON (int) ;
 int ath10k_mac_get_any_chandef_iter ;
 int ath10k_mac_num_chanctxs (struct ath10k*) ;
 int ieee80211_iter_chan_contexts_atomic (int ,int ,struct cfg80211_chan_def**) ;
 int lockdep_assert_held (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void
ath10k_mac_update_rx_channel(struct ath10k *ar,
        struct ieee80211_chanctx_conf *ctx,
        struct ieee80211_vif_chanctx_switch *vifs,
        int n_vifs)
{
 struct cfg80211_chan_def *def = ((void*)0);




 lockdep_assert_held(&ar->conf_mutex);
 lockdep_assert_held(&ar->data_lock);

 WARN_ON(ctx && vifs);
 WARN_ON(vifs && !n_vifs);
 rcu_read_lock();
 if (!ctx && ath10k_mac_num_chanctxs(ar) == 1) {
  ieee80211_iter_chan_contexts_atomic(ar->hw,
          ath10k_mac_get_any_chandef_iter,
          &def);

  if (vifs)
   def = &vifs[0].new_ctx->def;

  ar->rx_channel = def->chan;
 } else if ((ctx && ath10k_mac_num_chanctxs(ar) == 0) ||
     (ctx && (ar->state == ATH10K_STATE_RESTARTED))) {





  ar->rx_channel = ctx->def.chan;
 } else {
  ar->rx_channel = ((void*)0);
 }
 rcu_read_unlock();
}
