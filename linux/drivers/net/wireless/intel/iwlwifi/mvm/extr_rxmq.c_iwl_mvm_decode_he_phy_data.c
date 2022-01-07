
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_mvm_rx_phy_data {int info_type; int d0; int d1; int d4; int d2; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_rx_status {int dummy; } ;
struct ieee80211_radiotap_he_mu {int flags2; int flags1; } ;
struct ieee80211_radiotap_he {int data3; int data1; int data4; int data6; int data5; int data2; } ;


 int IEEE80211_RADIOTAP_HE_DATA1_BEAM_CHANGE_KNOWN ;
 int IEEE80211_RADIOTAP_HE_DATA1_BSS_COLOR_KNOWN ;
 int IEEE80211_RADIOTAP_HE_DATA1_DOPPLER_KNOWN ;
 int IEEE80211_RADIOTAP_HE_DATA1_LDPC_XSYMSEG_KNOWN ;
 int IEEE80211_RADIOTAP_HE_DATA1_SPTL_REUSE2_KNOWN ;
 int IEEE80211_RADIOTAP_HE_DATA1_SPTL_REUSE3_KNOWN ;
 int IEEE80211_RADIOTAP_HE_DATA1_SPTL_REUSE4_KNOWN ;
 int IEEE80211_RADIOTAP_HE_DATA1_SPTL_REUSE_KNOWN ;
 int IEEE80211_RADIOTAP_HE_DATA1_UL_DL_KNOWN ;
 int IEEE80211_RADIOTAP_HE_DATA2_NUM_LTF_SYMS_KNOWN ;
 int IEEE80211_RADIOTAP_HE_DATA2_PE_DISAMBIG_KNOWN ;
 int IEEE80211_RADIOTAP_HE_DATA2_PRE_FEC_PAD_KNOWN ;
 int IEEE80211_RADIOTAP_HE_DATA2_TXOP_KNOWN ;
 int IEEE80211_RADIOTAP_HE_DATA3_BEAM_CHANGE ;
 int IEEE80211_RADIOTAP_HE_DATA3_BSS_COLOR ;
 int IEEE80211_RADIOTAP_HE_DATA3_LDPC_XSYMSEG ;
 int IEEE80211_RADIOTAP_HE_DATA3_UL_DL ;
 int IEEE80211_RADIOTAP_HE_DATA4_SU_MU_SPTL_REUSE ;
 int IEEE80211_RADIOTAP_HE_DATA4_TB_SPTL_REUSE1 ;
 int IEEE80211_RADIOTAP_HE_DATA4_TB_SPTL_REUSE2 ;
 int IEEE80211_RADIOTAP_HE_DATA4_TB_SPTL_REUSE3 ;
 int IEEE80211_RADIOTAP_HE_DATA4_TB_SPTL_REUSE4 ;
 int IEEE80211_RADIOTAP_HE_DATA5_NUM_LTF_SYMS ;
 int IEEE80211_RADIOTAP_HE_DATA5_PE_DISAMBIG ;
 int IEEE80211_RADIOTAP_HE_DATA5_PRE_FEC_PAD ;
 int IEEE80211_RADIOTAP_HE_DATA6_DOPPLER ;
 int IEEE80211_RADIOTAP_HE_DATA6_TXOP ;
 int IEEE80211_RADIOTAP_HE_MU_FLAGS1_SIG_B_DCM ;
 int IEEE80211_RADIOTAP_HE_MU_FLAGS1_SIG_B_MCS ;
 int IEEE80211_RADIOTAP_HE_MU_FLAGS2_PUNC_FROM_SIG_A_BW ;
 int IEEE80211_RADIOTAP_HE_MU_FLAGS2_SIG_B_COMP ;
 int IEEE80211_RADIOTAP_HE_MU_FLAGS2_SIG_B_SYMS_USERS ;
 int IWL_RX_PHY_DATA0_HE_BEAM_CHNG ;
 int IWL_RX_PHY_DATA0_HE_BSS_COLOR_MASK ;
 int IWL_RX_PHY_DATA0_HE_DOPPLER ;
 int IWL_RX_PHY_DATA0_HE_LDPC_EXT_SYM ;
 int IWL_RX_PHY_DATA0_HE_PE_DISAMBIG ;
 int IWL_RX_PHY_DATA0_HE_PRE_FEC_PAD_MASK ;
 int IWL_RX_PHY_DATA0_HE_SPATIAL_REUSE_MASK ;
 int IWL_RX_PHY_DATA0_HE_TXOP_DUR_MASK ;
 int IWL_RX_PHY_DATA0_HE_UPLINK ;
 int IWL_RX_PHY_DATA1_HE_LTF_NUM_MASK ;
 int IWL_RX_PHY_DATA1_HE_MU_SIBG_SYM_OR_USER_NUM_MASK ;
 int IWL_RX_PHY_DATA1_HE_MU_SIGB_COMPRESSION ;
 int IWL_RX_PHY_DATA2_HE_TB_EXT_SPTL_REUSE1 ;
 int IWL_RX_PHY_DATA2_HE_TB_EXT_SPTL_REUSE2 ;
 int IWL_RX_PHY_DATA2_HE_TB_EXT_SPTL_REUSE3 ;
 int IWL_RX_PHY_DATA2_HE_TB_EXT_SPTL_REUSE4 ;
 int IWL_RX_PHY_DATA4_HE_MU_EXT_PREAMBLE_PUNC_TYPE_MASK ;
 int IWL_RX_PHY_DATA4_HE_MU_EXT_SIGB_DCM ;
 int IWL_RX_PHY_DATA4_HE_MU_EXT_SIGB_MCS_MASK ;
 int cpu_to_le16 (int) ;
 int iwl_mvm_decode_he_mu_ext (struct iwl_mvm*,struct iwl_mvm_rx_phy_data*,int ,struct ieee80211_radiotap_he_mu*) ;
 int iwl_mvm_decode_he_phy_ru_alloc (struct iwl_mvm_rx_phy_data*,int ,struct ieee80211_radiotap_he*,struct ieee80211_radiotap_he_mu*,struct ieee80211_rx_status*) ;
 int le16_encode_bits (int ,int ) ;
 int le16_get_bits (int ,int ) ;
 int le32_get_bits (int ,int ) ;

__attribute__((used)) static void iwl_mvm_decode_he_phy_data(struct iwl_mvm *mvm,
           struct iwl_mvm_rx_phy_data *phy_data,
           struct ieee80211_radiotap_he *he,
           struct ieee80211_radiotap_he_mu *he_mu,
           struct ieee80211_rx_status *rx_status,
           u32 rate_n_flags, int queue)
{
 switch (phy_data->info_type) {
 case 131:
 case 138:
 case 130:
 case 132:
 case 128:
 case 129:
  return;
 case 133:
  he->data1 |= cpu_to_le16(IEEE80211_RADIOTAP_HE_DATA1_SPTL_REUSE_KNOWN |
      IEEE80211_RADIOTAP_HE_DATA1_SPTL_REUSE2_KNOWN |
      IEEE80211_RADIOTAP_HE_DATA1_SPTL_REUSE3_KNOWN |
      IEEE80211_RADIOTAP_HE_DATA1_SPTL_REUSE4_KNOWN);
  he->data4 |= le16_encode_bits(le32_get_bits(phy_data->d2,
           IWL_RX_PHY_DATA2_HE_TB_EXT_SPTL_REUSE1),
           IEEE80211_RADIOTAP_HE_DATA4_TB_SPTL_REUSE1);
  he->data4 |= le16_encode_bits(le32_get_bits(phy_data->d2,
           IWL_RX_PHY_DATA2_HE_TB_EXT_SPTL_REUSE2),
           IEEE80211_RADIOTAP_HE_DATA4_TB_SPTL_REUSE2);
  he->data4 |= le16_encode_bits(le32_get_bits(phy_data->d2,
           IWL_RX_PHY_DATA2_HE_TB_EXT_SPTL_REUSE3),
           IEEE80211_RADIOTAP_HE_DATA4_TB_SPTL_REUSE3);
  he->data4 |= le16_encode_bits(le32_get_bits(phy_data->d2,
           IWL_RX_PHY_DATA2_HE_TB_EXT_SPTL_REUSE4),
           IEEE80211_RADIOTAP_HE_DATA4_TB_SPTL_REUSE4);

 case 135:
 case 137:
 case 136:
 case 134:

  he->data1 |= cpu_to_le16(IEEE80211_RADIOTAP_HE_DATA1_LDPC_XSYMSEG_KNOWN |
      IEEE80211_RADIOTAP_HE_DATA1_DOPPLER_KNOWN |
      IEEE80211_RADIOTAP_HE_DATA1_BSS_COLOR_KNOWN);
  he->data2 |= cpu_to_le16(IEEE80211_RADIOTAP_HE_DATA2_PRE_FEC_PAD_KNOWN |
      IEEE80211_RADIOTAP_HE_DATA2_PE_DISAMBIG_KNOWN |
      IEEE80211_RADIOTAP_HE_DATA2_TXOP_KNOWN |
      IEEE80211_RADIOTAP_HE_DATA2_NUM_LTF_SYMS_KNOWN);
  he->data3 |= le16_encode_bits(le32_get_bits(phy_data->d0,
           IWL_RX_PHY_DATA0_HE_BSS_COLOR_MASK),
           IEEE80211_RADIOTAP_HE_DATA3_BSS_COLOR);
  if (phy_data->info_type != 134 &&
      phy_data->info_type != 133) {
   he->data1 |= cpu_to_le16(IEEE80211_RADIOTAP_HE_DATA1_UL_DL_KNOWN);
   he->data3 |= le16_encode_bits(le32_get_bits(phy_data->d0,
           IWL_RX_PHY_DATA0_HE_UPLINK),
            IEEE80211_RADIOTAP_HE_DATA3_UL_DL);
  }
  he->data3 |= le16_encode_bits(le32_get_bits(phy_data->d0,
           IWL_RX_PHY_DATA0_HE_LDPC_EXT_SYM),
           IEEE80211_RADIOTAP_HE_DATA3_LDPC_XSYMSEG);
  he->data5 |= le16_encode_bits(le32_get_bits(phy_data->d0,
           IWL_RX_PHY_DATA0_HE_PRE_FEC_PAD_MASK),
           IEEE80211_RADIOTAP_HE_DATA5_PRE_FEC_PAD);
  he->data5 |= le16_encode_bits(le32_get_bits(phy_data->d0,
           IWL_RX_PHY_DATA0_HE_PE_DISAMBIG),
           IEEE80211_RADIOTAP_HE_DATA5_PE_DISAMBIG);
  he->data5 |= le16_encode_bits(le32_get_bits(phy_data->d1,
           IWL_RX_PHY_DATA1_HE_LTF_NUM_MASK),
           IEEE80211_RADIOTAP_HE_DATA5_NUM_LTF_SYMS);
  he->data6 |= le16_encode_bits(le32_get_bits(phy_data->d0,
           IWL_RX_PHY_DATA0_HE_TXOP_DUR_MASK),
           IEEE80211_RADIOTAP_HE_DATA6_TXOP);
  he->data6 |= le16_encode_bits(le32_get_bits(phy_data->d0,
           IWL_RX_PHY_DATA0_HE_DOPPLER),
           IEEE80211_RADIOTAP_HE_DATA6_DOPPLER);
  break;
 }

 switch (phy_data->info_type) {
 case 136:
 case 137:
 case 135:
  he->data1 |= cpu_to_le16(IEEE80211_RADIOTAP_HE_DATA1_SPTL_REUSE_KNOWN);
  he->data4 |= le16_encode_bits(le32_get_bits(phy_data->d0,
           IWL_RX_PHY_DATA0_HE_SPATIAL_REUSE_MASK),
           IEEE80211_RADIOTAP_HE_DATA4_SU_MU_SPTL_REUSE);
  break;
 default:

  break;
 }

 switch (phy_data->info_type) {
 case 136:
  he_mu->flags1 |=
   le16_encode_bits(le16_get_bits(phy_data->d4,
             IWL_RX_PHY_DATA4_HE_MU_EXT_SIGB_DCM),
      IEEE80211_RADIOTAP_HE_MU_FLAGS1_SIG_B_DCM);
  he_mu->flags1 |=
   le16_encode_bits(le16_get_bits(phy_data->d4,
             IWL_RX_PHY_DATA4_HE_MU_EXT_SIGB_MCS_MASK),
      IEEE80211_RADIOTAP_HE_MU_FLAGS1_SIG_B_MCS);
  he_mu->flags2 |=
   le16_encode_bits(le16_get_bits(phy_data->d4,
             IWL_RX_PHY_DATA4_HE_MU_EXT_PREAMBLE_PUNC_TYPE_MASK),
      IEEE80211_RADIOTAP_HE_MU_FLAGS2_PUNC_FROM_SIG_A_BW);
  iwl_mvm_decode_he_mu_ext(mvm, phy_data, rate_n_flags, he_mu);

 case 137:
  he_mu->flags2 |=
   le16_encode_bits(le32_get_bits(phy_data->d1,
             IWL_RX_PHY_DATA1_HE_MU_SIBG_SYM_OR_USER_NUM_MASK),
      IEEE80211_RADIOTAP_HE_MU_FLAGS2_SIG_B_SYMS_USERS);
  he_mu->flags2 |=
   le16_encode_bits(le32_get_bits(phy_data->d1,
             IWL_RX_PHY_DATA1_HE_MU_SIGB_COMPRESSION),
      IEEE80211_RADIOTAP_HE_MU_FLAGS2_SIG_B_COMP);

 case 134:
 case 133:
  iwl_mvm_decode_he_phy_ru_alloc(phy_data, rate_n_flags,
            he, he_mu, rx_status);
  break;
 case 135:
  he->data1 |= cpu_to_le16(IEEE80211_RADIOTAP_HE_DATA1_BEAM_CHANGE_KNOWN);
  he->data3 |= le16_encode_bits(le32_get_bits(phy_data->d0,
           IWL_RX_PHY_DATA0_HE_BEAM_CHNG),
           IEEE80211_RADIOTAP_HE_DATA3_BEAM_CHANGE);
  break;
 default:

  break;
 }
}
