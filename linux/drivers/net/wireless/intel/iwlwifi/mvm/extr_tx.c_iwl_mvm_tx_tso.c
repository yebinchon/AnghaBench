
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_tx_info {int dummy; } ;
struct ieee80211_sta {int dummy; } ;


 int WARN_ON (int) ;

__attribute__((used)) static int iwl_mvm_tx_tso(struct iwl_mvm *mvm, struct sk_buff *skb,
     struct ieee80211_tx_info *info,
     struct ieee80211_sta *sta,
     struct sk_buff_head *mpdus_skb)
{

 WARN_ON(1);

 return -1;
}
