
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct napi_struct {int dummy; } ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_no_data {int * rx_vec; int * phy_info; int info; int rssi; int on_air_rise_time; int rate; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm_rx_phy_data {void* info_type; int d0; } ;
struct iwl_mvm {int hw; int status; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_rx_status {int device_timestamp; int enc_flags; int rate_idx; int band; void* nss; int encoding; int freq; int bw; int zero_length_psdu_type; int flag; } ;


 int GFP_ATOMIC ;
 int IEEE80211_RADIOTAP_ZERO_LEN_PSDU_NOT_CAPTURED ;
 int IEEE80211_RADIOTAP_ZERO_LEN_PSDU_SOUNDING ;
 int IEEE80211_RADIOTAP_ZERO_LEN_PSDU_VENDOR ;
 struct ieee80211_rx_status* IEEE80211_SKB_RXCB (struct sk_buff*) ;
 int IWL_ERR (struct iwl_mvm*,char*) ;
 int IWL_MVM_STATUS_IN_HW_RESTART ;
 int IWL_RX_MPDU_PHY_TSF_OVERLOAD ;
 int IWL_RX_PHY_DATA1_INFO_TYPE_MASK ;
 void* IWL_RX_PHY_INFO_TYPE_NONE ;
 int NL80211_BAND_2GHZ ;
 int NL80211_BAND_5GHZ ;
 int RATE_HT_MCS_GF_MSK ;
 int RATE_HT_MCS_INDEX_MSK ;
 int RATE_INFO_BW_160 ;
 int RATE_INFO_BW_40 ;
 int RATE_INFO_BW_80 ;
 int RATE_MCS_BF_MSK ;
 int RATE_MCS_CCK_MSK ;




 int RATE_MCS_CHAN_WIDTH_MSK ;
 int RATE_MCS_HE_MSK ;
 int RATE_MCS_HT_MSK ;
 int RATE_MCS_LDPC_MSK ;
 int RATE_MCS_SGI_MSK ;
 int RATE_MCS_STBC_MSK ;
 int RATE_MCS_STBC_POS ;
 int RATE_MCS_VHT_MSK ;
 int RATE_VHT_MCS_RATE_CODE_MSK ;
 int RX_ENC_FLAG_BF ;
 int RX_ENC_FLAG_HT_GF ;
 int RX_ENC_FLAG_LDPC ;
 int RX_ENC_FLAG_SHORT_GI ;
 int RX_ENC_FLAG_STBC_SHIFT ;
 int RX_ENC_HT ;
 int RX_ENC_VHT ;
 int RX_FLAG_NO_PSDU ;
 int RX_NO_DATA_CHAIN_A_MSK ;
 int RX_NO_DATA_CHAIN_A_POS ;
 int RX_NO_DATA_CHAIN_B_MSK ;
 int RX_NO_DATA_CHAIN_B_POS ;
 int RX_NO_DATA_CHANNEL_MSK ;
 int RX_NO_DATA_CHANNEL_POS ;

 int RX_NO_DATA_INFO_TYPE_MSK ;


 int RX_NO_DATA_RX_VEC0_HE_NSTS_MSK ;
 int RX_NO_DATA_RX_VEC0_VHT_NSTS_MSK ;
 scalar_t__ WARN (int,char*,int,int ) ;
 struct sk_buff* alloc_skb (int,int ) ;
 int ieee80211_channel_to_frequency (int,int ) ;
 int ieee80211_rx_napi (int ,struct ieee80211_sta*,struct sk_buff*,struct napi_struct*) ;
 int iwl_mvm_decode_lsig (struct sk_buff*,struct iwl_mvm_rx_phy_data*) ;
 int iwl_mvm_get_signal_strength (struct iwl_mvm*,struct ieee80211_rx_status*,int,int,int) ;
 int iwl_mvm_legacy_rate_to_mac80211_idx (int,int ) ;
 int iwl_mvm_rx_he (struct iwl_mvm*,struct sk_buff*,struct iwl_mvm_rx_phy_data*,int,int ,int) ;
 int kfree_skb (struct sk_buff*) ;
 void* le32_get_bits (int ,int ) ;
 int le32_to_cpu (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;

void iwl_mvm_rx_monitor_no_data(struct iwl_mvm *mvm, struct napi_struct *napi,
    struct iwl_rx_cmd_buffer *rxb, int queue)
{
 struct ieee80211_rx_status *rx_status;
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 struct iwl_rx_no_data *desc = (void *)pkt->data;
 u32 rate_n_flags = le32_to_cpu(desc->rate);
 u32 gp2_on_air_rise = le32_to_cpu(desc->on_air_rise_time);
 u32 rssi = le32_to_cpu(desc->rssi);
 u32 info_type = le32_to_cpu(desc->info) & RX_NO_DATA_INFO_TYPE_MSK;
 u16 phy_info = IWL_RX_MPDU_PHY_TSF_OVERLOAD;
 struct ieee80211_sta *sta = ((void*)0);
 struct sk_buff *skb;
 u8 channel, energy_a, energy_b;
 struct iwl_mvm_rx_phy_data phy_data = {
  .d0 = desc->phy_info[0],
  .info_type = IWL_RX_PHY_INFO_TYPE_NONE,
 };

 if (unlikely(test_bit(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status)))
  return;

 energy_a = (rssi & RX_NO_DATA_CHAIN_A_MSK) >> RX_NO_DATA_CHAIN_A_POS;
 energy_b = (rssi & RX_NO_DATA_CHAIN_B_MSK) >> RX_NO_DATA_CHAIN_B_POS;
 channel = (rssi & RX_NO_DATA_CHANNEL_MSK) >> RX_NO_DATA_CHANNEL_POS;

 phy_data.info_type =
  le32_get_bits(desc->phy_info[1],
         IWL_RX_PHY_DATA1_INFO_TYPE_MASK);




 skb = alloc_skb(128, GFP_ATOMIC);
 if (!skb) {
  IWL_ERR(mvm, "alloc_skb failed\n");
  return;
 }

 rx_status = IEEE80211_SKB_RXCB(skb);


 rx_status->flag |= RX_FLAG_NO_PSDU;

 switch (info_type) {
 case 128:
  rx_status->zero_length_psdu_type =
   IEEE80211_RADIOTAP_ZERO_LEN_PSDU_SOUNDING;
  break;
 case 129:
 case 130:
  rx_status->zero_length_psdu_type =
   IEEE80211_RADIOTAP_ZERO_LEN_PSDU_NOT_CAPTURED;
  break;
 default:
  rx_status->zero_length_psdu_type =
   IEEE80211_RADIOTAP_ZERO_LEN_PSDU_VENDOR;
  break;
 }


 switch (rate_n_flags & RATE_MCS_CHAN_WIDTH_MSK) {
 case 133:
  break;
 case 132:
  rx_status->bw = RATE_INFO_BW_40;
  break;
 case 131:
  rx_status->bw = RATE_INFO_BW_80;
  break;
 case 134:
  rx_status->bw = RATE_INFO_BW_160;
  break;
 }

 if (rate_n_flags & RATE_MCS_HE_MSK)
  iwl_mvm_rx_he(mvm, skb, &phy_data, rate_n_flags,
         phy_info, queue);

 iwl_mvm_decode_lsig(skb, &phy_data);

 rx_status->device_timestamp = gp2_on_air_rise;
 rx_status->band = channel > 14 ? NL80211_BAND_5GHZ :
  NL80211_BAND_2GHZ;
 rx_status->freq = ieee80211_channel_to_frequency(channel,
        rx_status->band);
 iwl_mvm_get_signal_strength(mvm, rx_status, rate_n_flags, energy_a,
        energy_b);

 rcu_read_lock();

 if (!(rate_n_flags & RATE_MCS_CCK_MSK) &&
     rate_n_flags & RATE_MCS_SGI_MSK)
  rx_status->enc_flags |= RX_ENC_FLAG_SHORT_GI;
 if (rate_n_flags & RATE_HT_MCS_GF_MSK)
  rx_status->enc_flags |= RX_ENC_FLAG_HT_GF;
 if (rate_n_flags & RATE_MCS_LDPC_MSK)
  rx_status->enc_flags |= RX_ENC_FLAG_LDPC;
 if (rate_n_flags & RATE_MCS_HT_MSK) {
  u8 stbc = (rate_n_flags & RATE_MCS_STBC_MSK) >>
    RATE_MCS_STBC_POS;
  rx_status->encoding = RX_ENC_HT;
  rx_status->rate_idx = rate_n_flags & RATE_HT_MCS_INDEX_MSK;
  rx_status->enc_flags |= stbc << RX_ENC_FLAG_STBC_SHIFT;
 } else if (rate_n_flags & RATE_MCS_VHT_MSK) {
  u8 stbc = (rate_n_flags & RATE_MCS_STBC_MSK) >>
    RATE_MCS_STBC_POS;
  rx_status->rate_idx = rate_n_flags & RATE_VHT_MCS_RATE_CODE_MSK;
  rx_status->encoding = RX_ENC_VHT;
  rx_status->enc_flags |= stbc << RX_ENC_FLAG_STBC_SHIFT;
  if (rate_n_flags & RATE_MCS_BF_MSK)
   rx_status->enc_flags |= RX_ENC_FLAG_BF;





  rx_status->nss =
   le32_get_bits(desc->rx_vec[0],
          RX_NO_DATA_RX_VEC0_VHT_NSTS_MSK) + 1;
 } else if (rate_n_flags & RATE_MCS_HE_MSK) {
  rx_status->nss =
   le32_get_bits(desc->rx_vec[0],
          RX_NO_DATA_RX_VEC0_HE_NSTS_MSK) + 1;
 } else {
  int rate = iwl_mvm_legacy_rate_to_mac80211_idx(rate_n_flags,
              rx_status->band);

  if (WARN(rate < 0 || rate > 0xFF,
    "Invalid rate flags 0x%x, band %d,\n",
    rate_n_flags, rx_status->band)) {
   kfree_skb(skb);
   goto out;
  }
  rx_status->rate_idx = rate;
 }

 ieee80211_rx_napi(mvm->hw, sta, skb, napi);
out:
 rcu_read_unlock();
}
