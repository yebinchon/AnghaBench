
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct iwl_priv {TYPE_2__* contexts; } ;
struct ieee80211_rx_status {int flag; } ;
struct ieee80211_hdr {int frame_control; } ;
struct TYPE_3__ {int filter_flags; } ;
struct TYPE_4__ {TYPE_1__ active; } ;


 int IEEE80211_FCTL_PROTECTED ;
 int IWL_DEBUG_RX (struct iwl_priv*,char*,...) ;
 size_t IWL_RXON_CTX_BSS ;
 int RXON_FILTER_DIS_DECRYPT_MSK ;
 int RX_FLAG_DECRYPTED ;
 int RX_RES_STATUS_BAD_ICV_MIC ;
 int RX_RES_STATUS_BAD_KEY_TTAK ;
 int RX_RES_STATUS_DECRYPT_OK ;
 int RX_RES_STATUS_DECRYPT_TYPE_MSK ;

 int RX_RES_STATUS_SEC_TYPE_MSK ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static int iwlagn_set_decrypted_flag(struct iwl_priv *priv,
      struct ieee80211_hdr *hdr,
      u32 decrypt_res,
      struct ieee80211_rx_status *stats)
{
 u16 fc = le16_to_cpu(hdr->frame_control);





 if (priv->contexts[IWL_RXON_CTX_BSS].active.filter_flags &
      RXON_FILTER_DIS_DECRYPT_MSK)
  return 0;

 if (!(fc & IEEE80211_FCTL_PROTECTED))
  return 0;

 IWL_DEBUG_RX(priv, "decrypt_res:0x%x\n", decrypt_res);
 switch (decrypt_res & RX_RES_STATUS_SEC_TYPE_MSK) {
 case 129:


  if ((decrypt_res & RX_RES_STATUS_DECRYPT_TYPE_MSK) ==
      RX_RES_STATUS_BAD_KEY_TTAK)
   break;

 case 128:
  if ((decrypt_res & RX_RES_STATUS_DECRYPT_TYPE_MSK) ==
      RX_RES_STATUS_BAD_ICV_MIC) {


   IWL_DEBUG_RX(priv, "Packet destroyed\n");
   return -1;
  }

 case 130:
  if ((decrypt_res & RX_RES_STATUS_DECRYPT_TYPE_MSK) ==
      RX_RES_STATUS_DECRYPT_OK) {
   IWL_DEBUG_RX(priv, "hw decrypt successfully!!!\n");
   stats->flag |= RX_FLAG_DECRYPTED;
  }
  break;

 default:
  break;
 }
 return 0;
}
