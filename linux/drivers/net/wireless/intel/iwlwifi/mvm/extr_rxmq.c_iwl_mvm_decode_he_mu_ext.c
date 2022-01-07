
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct iwl_mvm_rx_phy_data {int d4; int d3; int d2; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_radiotap_he_mu {void** ru_ch2; int flags2; int flags1; void** ru_ch1; } ;


 void* FIELD_GET (int ,int) ;
 int IEEE80211_RADIOTAP_HE_MU_FLAGS1_CH1_CTR_26T_RU ;
 int IEEE80211_RADIOTAP_HE_MU_FLAGS1_CH1_CTR_26T_RU_KNOWN ;
 int IEEE80211_RADIOTAP_HE_MU_FLAGS1_CH1_RU_KNOWN ;
 int IEEE80211_RADIOTAP_HE_MU_FLAGS1_CH2_CTR_26T_RU_KNOWN ;
 int IEEE80211_RADIOTAP_HE_MU_FLAGS1_CH2_RU_KNOWN ;
 int IEEE80211_RADIOTAP_HE_MU_FLAGS2_CH2_CTR_26T_RU ;
 int IWL_RX_PHY_DATA2_HE_MU_EXT_CH1_RU0 ;
 int IWL_RX_PHY_DATA2_HE_MU_EXT_CH1_RU2 ;
 int IWL_RX_PHY_DATA2_HE_MU_EXT_CH2_RU0 ;
 int IWL_RX_PHY_DATA2_HE_MU_EXT_CH2_RU2 ;
 int IWL_RX_PHY_DATA3_HE_MU_EXT_CH1_RU1 ;
 int IWL_RX_PHY_DATA3_HE_MU_EXT_CH1_RU3 ;
 int IWL_RX_PHY_DATA3_HE_MU_EXT_CH2_RU1 ;
 int IWL_RX_PHY_DATA3_HE_MU_EXT_CH2_RU3 ;
 int IWL_RX_PHY_DATA4_HE_MU_EXT_CH1_CRC_OK ;
 int IWL_RX_PHY_DATA4_HE_MU_EXT_CH1_CTR_RU ;
 int IWL_RX_PHY_DATA4_HE_MU_EXT_CH2_CRC_OK ;
 int IWL_RX_PHY_DATA4_HE_MU_EXT_CH2_CTR_RU ;
 int RATE_MCS_CHAN_WIDTH_20 ;
 int RATE_MCS_CHAN_WIDTH_MSK ;
 int cpu_to_le16 (int) ;
 int le16_encode_bits (void*,int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void iwl_mvm_decode_he_mu_ext(struct iwl_mvm *mvm,
         struct iwl_mvm_rx_phy_data *phy_data,
         u32 rate_n_flags,
         struct ieee80211_radiotap_he_mu *he_mu)
{
 u32 phy_data2 = le32_to_cpu(phy_data->d2);
 u32 phy_data3 = le32_to_cpu(phy_data->d3);
 u16 phy_data4 = le16_to_cpu(phy_data->d4);

 if (FIELD_GET(IWL_RX_PHY_DATA4_HE_MU_EXT_CH1_CRC_OK, phy_data4)) {
  he_mu->flags1 |=
   cpu_to_le16(IEEE80211_RADIOTAP_HE_MU_FLAGS1_CH1_RU_KNOWN |
        IEEE80211_RADIOTAP_HE_MU_FLAGS1_CH1_CTR_26T_RU_KNOWN);

  he_mu->flags1 |=
   le16_encode_bits(FIELD_GET(IWL_RX_PHY_DATA4_HE_MU_EXT_CH1_CTR_RU,
         phy_data4),
      IEEE80211_RADIOTAP_HE_MU_FLAGS1_CH1_CTR_26T_RU);

  he_mu->ru_ch1[0] = FIELD_GET(IWL_RX_PHY_DATA2_HE_MU_EXT_CH1_RU0,
          phy_data2);
  he_mu->ru_ch1[1] = FIELD_GET(IWL_RX_PHY_DATA3_HE_MU_EXT_CH1_RU1,
          phy_data3);
  he_mu->ru_ch1[2] = FIELD_GET(IWL_RX_PHY_DATA2_HE_MU_EXT_CH1_RU2,
          phy_data2);
  he_mu->ru_ch1[3] = FIELD_GET(IWL_RX_PHY_DATA3_HE_MU_EXT_CH1_RU3,
          phy_data3);
 }

 if (FIELD_GET(IWL_RX_PHY_DATA4_HE_MU_EXT_CH2_CRC_OK, phy_data4) &&
     (rate_n_flags & RATE_MCS_CHAN_WIDTH_MSK) != RATE_MCS_CHAN_WIDTH_20) {
  he_mu->flags1 |=
   cpu_to_le16(IEEE80211_RADIOTAP_HE_MU_FLAGS1_CH2_RU_KNOWN |
        IEEE80211_RADIOTAP_HE_MU_FLAGS1_CH2_CTR_26T_RU_KNOWN);

  he_mu->flags2 |=
   le16_encode_bits(FIELD_GET(IWL_RX_PHY_DATA4_HE_MU_EXT_CH2_CTR_RU,
         phy_data4),
      IEEE80211_RADIOTAP_HE_MU_FLAGS2_CH2_CTR_26T_RU);

  he_mu->ru_ch2[0] = FIELD_GET(IWL_RX_PHY_DATA2_HE_MU_EXT_CH2_RU0,
          phy_data2);
  he_mu->ru_ch2[1] = FIELD_GET(IWL_RX_PHY_DATA3_HE_MU_EXT_CH2_RU1,
          phy_data3);
  he_mu->ru_ch2[2] = FIELD_GET(IWL_RX_PHY_DATA2_HE_MU_EXT_CH2_RU2,
          phy_data2);
  he_mu->ru_ch2[3] = FIELD_GET(IWL_RX_PHY_DATA3_HE_MU_EXT_CH2_RU3,
          phy_data3);
 }
}
