
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct iwl_device_cmd {int dummy; } ;
struct ieee80211_tx_info {struct iwl_device_cmd** driver_data; struct iwl_device_cmd* status; } ;


 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int memset (struct iwl_device_cmd**,int ,int) ;

__attribute__((used)) static void iwl_mvm_skb_prepare_status(struct sk_buff *skb,
           struct iwl_device_cmd *cmd)
{
 struct ieee80211_tx_info *skb_info = IEEE80211_SKB_CB(skb);

 memset(&skb_info->status, 0, sizeof(skb_info->status));
 memset(skb_info->driver_data, 0, sizeof(skb_info->driver_data));

 skb_info->driver_data[1] = cmd;
}
