
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_ops {int dummy; } ;
struct ath10k {int hw; struct ieee80211_ops* ops; } ;


 int ieee80211_free_hw (int ) ;
 int kfree (struct ieee80211_ops*) ;

void ath10k_mac_destroy(struct ath10k *ar)
{
 struct ieee80211_ops *ops = ar->ops;

 ieee80211_free_hw(ar->hw);
 kfree(ops);
}
