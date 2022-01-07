
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int dummy; } ;
typedef enum htt_rx_mpdu_encrypt_type { ____Placeholder_htt_rx_mpdu_encrypt_type } htt_rx_mpdu_encrypt_type ;
 int IEEE80211_TKIP_ICV_LEN ;
 int IEEE80211_WEP_ICV_LEN ;
 int ath10k_warn (struct ath10k*,char*,int) ;

__attribute__((used)) static int ath10k_htt_rx_crypto_icv_len(struct ath10k *ar,
     enum htt_rx_mpdu_encrypt_type type)
{
 switch (type) {
 case 134:
 case 137:
 case 138:
 case 135:
 case 136:
  return 0;
 case 128:
 case 130:
  return IEEE80211_WEP_ICV_LEN;
 case 133:
 case 132:
  return IEEE80211_TKIP_ICV_LEN;
 case 129:
 case 131:
  break;
 }

 ath10k_warn(ar, "unsupported encryption type %d\n", type);
 return 0;
}
