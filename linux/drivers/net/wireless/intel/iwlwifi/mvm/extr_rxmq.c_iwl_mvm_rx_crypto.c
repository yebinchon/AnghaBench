
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct iwl_rx_mpdu_desc {int status; } ;
struct iwl_mvm {int monitor_on; TYPE_3__* trans; TYPE_1__* fw; } ;
struct ieee80211_rx_status {int flag; } ;
struct ieee80211_hdr {int addr1; int frame_control; } ;
struct TYPE_6__ {TYPE_2__* trans_cfg; } ;
struct TYPE_5__ {int gen2; } ;
struct TYPE_4__ {int ucode_capa; } ;


 int BUILD_BUG_ON (int) ;
 int FH_RSCSR_RADA_EN ;
 int IEEE80211_CCMP_HDR_LEN ;
 int IEEE80211_CCMP_PN_LEN ;
 int IEEE80211_GCMP_PN_LEN ;
 int IEEE80211_TKIP_IV_LEN ;
 int IEEE80211_WEP_IV_LEN ;
 int IWL_ERR (struct iwl_mvm*,char*,int) ;
 int IWL_RX_MPDU_PHY_AMPDU ;
 int IWL_RX_MPDU_RES_STATUS_TTAK_OK ;
 int IWL_RX_MPDU_STATUS_ICV_OK ;
 int IWL_RX_MPDU_STATUS_MIC_OK ;



 int IWL_RX_MPDU_STATUS_SEC_MASK ;
 int IWL_RX_MPDU_STATUS_SEC_NONE ;

 int IWL_RX_MPDU_STATUS_SEC_UNKNOWN ;

 int IWL_UCODE_TLV_API_DEPRECATE_TTAK ;
 int RX_FLAG_DECRYPTED ;
 int RX_FLAG_ICV_STRIPPED ;
 int RX_FLAG_MIC_STRIPPED ;
 int RX_FLAG_MMIC_ERROR ;
 int RX_FLAG_MMIC_STRIPPED ;
 int RX_MPDU_RES_STATUS_MIC_OK ;
 int fw_has_api (int *,int ) ;
 int ieee80211_has_protected (int ) ;
 int is_multicast_ether_addr (int ) ;
 int le16_to_cpu (int ) ;
 int net_ratelimit () ;

__attribute__((used)) static int iwl_mvm_rx_crypto(struct iwl_mvm *mvm, struct ieee80211_hdr *hdr,
        struct ieee80211_rx_status *stats, u16 phy_info,
        struct iwl_rx_mpdu_desc *desc,
        u32 pkt_flags, int queue, u8 *crypt_len)
{
 u16 status = le16_to_cpu(desc->status);
 if (phy_info & IWL_RX_MPDU_PHY_AMPDU &&
     (status & IWL_RX_MPDU_STATUS_SEC_MASK) ==
     IWL_RX_MPDU_STATUS_SEC_UNKNOWN && !mvm->monitor_on)
  return -1;

 if (!ieee80211_has_protected(hdr->frame_control) ||
     (status & IWL_RX_MPDU_STATUS_SEC_MASK) ==
     IWL_RX_MPDU_STATUS_SEC_NONE)
  return 0;



 switch (status & IWL_RX_MPDU_STATUS_SEC_MASK) {
 case 132:
 case 130:
  BUILD_BUG_ON(IEEE80211_CCMP_PN_LEN != IEEE80211_GCMP_PN_LEN);

  if (!(status & IWL_RX_MPDU_STATUS_MIC_OK))
   return -1;

  stats->flag |= RX_FLAG_DECRYPTED;
  if (pkt_flags & FH_RSCSR_RADA_EN)
   stats->flag |= RX_FLAG_MIC_STRIPPED;
  *crypt_len = IEEE80211_CCMP_HDR_LEN;
  return 0;
 case 129:

  if (!fw_has_api(&mvm->fw->ucode_capa,
    IWL_UCODE_TLV_API_DEPRECATE_TTAK) &&
      !(status & IWL_RX_MPDU_RES_STATUS_TTAK_OK))
   return 0;

  if (mvm->trans->trans_cfg->gen2 &&
      !(status & RX_MPDU_RES_STATUS_MIC_OK))
   stats->flag |= RX_FLAG_MMIC_ERROR;

  *crypt_len = IEEE80211_TKIP_IV_LEN;

 case 128:
  if (!(status & IWL_RX_MPDU_STATUS_ICV_OK))
   return -1;

  stats->flag |= RX_FLAG_DECRYPTED;
  if ((status & IWL_RX_MPDU_STATUS_SEC_MASK) ==
    128)
   *crypt_len = IEEE80211_WEP_IV_LEN;

  if (pkt_flags & FH_RSCSR_RADA_EN) {
   stats->flag |= RX_FLAG_ICV_STRIPPED;
   if (mvm->trans->trans_cfg->gen2)
    stats->flag |= RX_FLAG_MMIC_STRIPPED;
  }

  return 0;
 case 131:
  if (!(status & IWL_RX_MPDU_STATUS_MIC_OK))
   return -1;
  stats->flag |= RX_FLAG_DECRYPTED;
  return 0;
 default:
  if (!is_multicast_ether_addr(hdr->addr1) &&
      !mvm->monitor_on && net_ratelimit())
   IWL_ERR(mvm, "Unhandled alg: 0x%x\n", status);
 }

 return 0;
}
