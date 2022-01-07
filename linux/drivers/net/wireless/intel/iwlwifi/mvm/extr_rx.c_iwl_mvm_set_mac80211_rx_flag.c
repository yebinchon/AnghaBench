
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct iwl_mvm {int monitor_on; TYPE_1__* fw; } ;
struct ieee80211_rx_status {int flag; } ;
struct ieee80211_hdr {int frame_control; } ;
struct TYPE_2__ {int ucode_capa; } ;


 int IEEE80211_CCMP_HDR_LEN ;
 int IEEE80211_TKIP_IV_LEN ;
 int IEEE80211_WEP_IV_LEN ;
 int IWL_ERR (struct iwl_mvm*,char*,int) ;
 int IWL_UCODE_TLV_API_DEPRECATE_TTAK ;
 int RX_FLAG_DECRYPTED ;
 int RX_MPDU_RES_STATUS_ICV_OK ;
 int RX_MPDU_RES_STATUS_MIC_OK ;

 int RX_MPDU_RES_STATUS_SEC_ENC_ERR ;
 int RX_MPDU_RES_STATUS_SEC_ENC_MSK ;

 int RX_MPDU_RES_STATUS_SEC_NO_ENC ;


 int RX_MPDU_RES_STATUS_TTAK_OK ;
 int fw_has_api (int *,int ) ;
 int ieee80211_has_protected (int ) ;

__attribute__((used)) static u32 iwl_mvm_set_mac80211_rx_flag(struct iwl_mvm *mvm,
     struct ieee80211_hdr *hdr,
     struct ieee80211_rx_status *stats,
     u32 rx_pkt_status,
     u8 *crypt_len)
{
 if (!ieee80211_has_protected(hdr->frame_control) ||
     (rx_pkt_status & RX_MPDU_RES_STATUS_SEC_ENC_MSK) ==
        RX_MPDU_RES_STATUS_SEC_NO_ENC)
  return 0;


 if ((rx_pkt_status & RX_MPDU_RES_STATUS_SEC_ENC_MSK) ==
     RX_MPDU_RES_STATUS_SEC_ENC_ERR)
  return 0;

 switch (rx_pkt_status & RX_MPDU_RES_STATUS_SEC_ENC_MSK) {
 case 131:

  if (!(rx_pkt_status & RX_MPDU_RES_STATUS_MIC_OK))
   return -1;

  stats->flag |= RX_FLAG_DECRYPTED;
  *crypt_len = IEEE80211_CCMP_HDR_LEN;
  return 0;

 case 129:

  if (!fw_has_api(&mvm->fw->ucode_capa,
    IWL_UCODE_TLV_API_DEPRECATE_TTAK) &&
      !(rx_pkt_status & RX_MPDU_RES_STATUS_TTAK_OK))
   return 0;
  *crypt_len = IEEE80211_TKIP_IV_LEN;


 case 128:
  if (!(rx_pkt_status & RX_MPDU_RES_STATUS_ICV_OK))
   return -1;

  stats->flag |= RX_FLAG_DECRYPTED;
  if ((rx_pkt_status & RX_MPDU_RES_STATUS_SEC_ENC_MSK) ==
    128)
   *crypt_len = IEEE80211_WEP_IV_LEN;
  return 0;

 case 130:
  if (!(rx_pkt_status & RX_MPDU_RES_STATUS_MIC_OK))
   return -1;
  stats->flag |= RX_FLAG_DECRYPTED;
  return 0;

 default:

  if (!mvm->monitor_on)
   IWL_ERR(mvm, "Unhandled alg: 0x%x\n", rx_pkt_status);
 }

 return 0;
}
