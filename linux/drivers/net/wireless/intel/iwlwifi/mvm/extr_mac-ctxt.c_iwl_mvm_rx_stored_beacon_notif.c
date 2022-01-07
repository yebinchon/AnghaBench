
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct iwl_stored_beacon_notif {int band; int data; int channel; int system_time; int tsf; int byte_count; } ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm {int hw; } ;
struct ieee80211_rx_status {int band; int freq; void* device_timestamp; int flag; int mactime; } ;
typedef int rx_status ;


 int GFP_ATOMIC ;
 int IEEE80211_SKB_RXCB (struct sk_buff*) ;
 int IWL_ERR (struct iwl_mvm*,char*) ;
 int NL80211_BAND_2GHZ ;
 int NL80211_BAND_5GHZ ;
 int RX_FLAG_MACTIME_PLCP_START ;
 int RX_RES_PHY_FLAGS_BAND_24 ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 int cpu_to_le16 (int ) ;
 int ieee80211_channel_to_frequency (int ,int ) ;
 int ieee80211_rx_napi (int ,int *,struct sk_buff*,int *) ;
 int le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int memcpy (int ,struct ieee80211_rx_status*,int) ;
 int memset (struct ieee80211_rx_status*,int ,int) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;
 int skb_put_data (struct sk_buff*,int ,scalar_t__) ;

void iwl_mvm_rx_stored_beacon_notif(struct iwl_mvm *mvm,
        struct iwl_rx_cmd_buffer *rxb)
{
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 struct iwl_stored_beacon_notif *sb = (void *)pkt->data;
 struct ieee80211_rx_status rx_status;
 struct sk_buff *skb;
 u32 size = le32_to_cpu(sb->byte_count);

 if (size == 0)
  return;

 skb = alloc_skb(size, GFP_ATOMIC);
 if (!skb) {
  IWL_ERR(mvm, "alloc_skb failed\n");
  return;
 }


 memset(&rx_status, 0, sizeof(rx_status));
 rx_status.mactime = le64_to_cpu(sb->tsf);

 rx_status.flag |= RX_FLAG_MACTIME_PLCP_START;
 rx_status.device_timestamp = le32_to_cpu(sb->system_time);
 rx_status.band =
  (sb->band & cpu_to_le16(RX_RES_PHY_FLAGS_BAND_24)) ?
    NL80211_BAND_2GHZ : NL80211_BAND_5GHZ;
 rx_status.freq =
  ieee80211_channel_to_frequency(le16_to_cpu(sb->channel),
            rx_status.band);


 skb_put_data(skb, sb->data, size);
 memcpy(IEEE80211_SKB_RXCB(skb), &rx_status, sizeof(rx_status));


 ieee80211_rx_napi(mvm->hw, ((void*)0), skb, ((void*)0));
}
