
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct carl9170_sta_info {int pending_frames; } ;
struct ar9170 {int hw; } ;


 struct ieee80211_sta* __carl9170_get_tx_sta (struct ar9170*,struct sk_buff*) ;
 scalar_t__ atomic_dec_return (int *) ;
 int ieee80211_sta_block_awake (int ,struct ieee80211_sta*,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void carl9170_tx_ps_unblock(struct ar9170 *ar, struct sk_buff *skb)
{
 struct ieee80211_sta *sta;
 struct carl9170_sta_info *sta_info;

 rcu_read_lock();
 sta = __carl9170_get_tx_sta(ar, skb);
 if (unlikely(!sta))
  goto out_rcu;

 sta_info = (struct carl9170_sta_info *) sta->drv_priv;
 if (atomic_dec_return(&sta_info->pending_frames) == 0)
  ieee80211_sta_block_awake(ar->hw, sta, 0);

out_rcu:
 rcu_read_unlock();
}
