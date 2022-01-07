
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_vif {int chanctx_conf; } ;
struct ath10k_mac_change_chanctx_arg {scalar_t__ ctx; int n_vifs; } ;


 scalar_t__ rcu_access_pointer (int ) ;

__attribute__((used)) static void
ath10k_mac_change_chanctx_cnt_iter(void *data, u8 *mac,
       struct ieee80211_vif *vif)
{
 struct ath10k_mac_change_chanctx_arg *arg = data;

 if (rcu_access_pointer(vif->chanctx_conf) != arg->ctx)
  return;

 arg->n_vifs++;
}
