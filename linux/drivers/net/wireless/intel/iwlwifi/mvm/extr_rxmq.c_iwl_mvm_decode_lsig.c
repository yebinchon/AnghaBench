
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct iwl_mvm_rx_phy_data {int info_type; int d1; } ;
struct ieee80211_rx_status {int flag; } ;
struct ieee80211_radiotap_lsig {int data2; int data1; } ;


 int IEEE80211_RADIOTAP_LSIG_DATA1_LENGTH_KNOWN ;
 int IEEE80211_RADIOTAP_LSIG_DATA2_LENGTH ;
 struct ieee80211_rx_status* IEEE80211_SKB_RXCB (struct sk_buff*) ;
 int IWL_RX_PHY_DATA1_LSIG_LEN_MASK ;
 int RX_FLAG_RADIOTAP_LSIG ;
 int cpu_to_le16 (int ) ;
 int le16_encode_bits (int ,int ) ;
 int le32_get_bits (int ,int ) ;
 struct ieee80211_radiotap_lsig* skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void iwl_mvm_decode_lsig(struct sk_buff *skb,
    struct iwl_mvm_rx_phy_data *phy_data)
{
 struct ieee80211_rx_status *rx_status = IEEE80211_SKB_RXCB(skb);
 struct ieee80211_radiotap_lsig *lsig;

 switch (phy_data->info_type) {
 case 130:
 case 128:
 case 129:
 case 131:
 case 133:
 case 135:
 case 134:
 case 132:
  lsig = skb_put(skb, sizeof(*lsig));
  lsig->data1 = cpu_to_le16(IEEE80211_RADIOTAP_LSIG_DATA1_LENGTH_KNOWN);
  lsig->data2 = le16_encode_bits(le32_get_bits(phy_data->d1,
            IWL_RX_PHY_DATA1_LSIG_LEN_MASK),
            IEEE80211_RADIOTAP_LSIG_DATA2_LENGTH);
  rx_status->flag |= RX_FLAG_RADIOTAP_LSIG;
  break;
 default:
  break;
 }
}
