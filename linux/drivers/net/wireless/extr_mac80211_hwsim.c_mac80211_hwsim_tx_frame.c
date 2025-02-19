
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct mac80211_hwsim_data {int wmediumd; } ;
struct TYPE_2__ {int rates; int vif; } ;
struct ieee80211_tx_info {TYPE_1__ control; } ;
struct ieee80211_hw {struct mac80211_hwsim_data* priv; } ;
struct ieee80211_channel {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 scalar_t__ READ_ONCE (int ) ;
 int SUPPORTS_RC_TABLE ;
 int dev_kfree_skb (struct sk_buff*) ;
 int ieee80211_get_tx_rates (int ,int *,struct sk_buff*,int ,int ) ;
 scalar_t__ ieee80211_hw_check (struct ieee80211_hw*,int ) ;
 int mac80211_hwsim_monitor_rx (struct ieee80211_hw*,struct sk_buff*,struct ieee80211_channel*) ;
 void mac80211_hwsim_tx_frame_nl (struct ieee80211_hw*,struct sk_buff*,scalar_t__) ;
 int mac80211_hwsim_tx_frame_no_nl (struct ieee80211_hw*,struct sk_buff*,struct ieee80211_channel*) ;

__attribute__((used)) static void mac80211_hwsim_tx_frame(struct ieee80211_hw *hw,
        struct sk_buff *skb,
        struct ieee80211_channel *chan)
{
 struct mac80211_hwsim_data *data = hw->priv;
 u32 _pid = READ_ONCE(data->wmediumd);

 if (ieee80211_hw_check(hw, SUPPORTS_RC_TABLE)) {
  struct ieee80211_tx_info *txi = IEEE80211_SKB_CB(skb);
  ieee80211_get_tx_rates(txi->control.vif, ((void*)0), skb,
           txi->control.rates,
           ARRAY_SIZE(txi->control.rates));
 }

 mac80211_hwsim_monitor_rx(hw, skb, chan);

 if (_pid)
  return mac80211_hwsim_tx_frame_nl(hw, skb, _pid);

 mac80211_hwsim_tx_frame_no_nl(hw, skb, chan);
 dev_kfree_skb(skb);
}
