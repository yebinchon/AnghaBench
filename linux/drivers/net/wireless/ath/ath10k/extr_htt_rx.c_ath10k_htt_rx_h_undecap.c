
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_rx_status {int dummy; } ;
struct TYPE_3__ {int info1; } ;
struct TYPE_4__ {TYPE_1__ common; } ;
struct htt_rx_desc {TYPE_2__ msdu_start; } ;
struct ath10k {int dummy; } ;
typedef enum rx_msdu_decap_format { ____Placeholder_rx_msdu_decap_format } rx_msdu_decap_format ;
typedef enum htt_rx_mpdu_encrypt_type { ____Placeholder_htt_rx_mpdu_encrypt_type } htt_rx_mpdu_encrypt_type ;


 int MS (int ,int ) ;




 int RX_MSDU_START_INFO1_DECAP_FORMAT ;
 int __le32_to_cpu (int ) ;
 int ath10k_htt_rx_h_undecap_eth (struct ath10k*,struct sk_buff*,struct ieee80211_rx_status*,int *,int) ;
 int ath10k_htt_rx_h_undecap_nwifi (struct ath10k*,struct sk_buff*,struct ieee80211_rx_status*,int *,int) ;
 int ath10k_htt_rx_h_undecap_raw (struct ath10k*,struct sk_buff*,struct ieee80211_rx_status*,int,int,int *) ;
 int ath10k_htt_rx_h_undecap_snap (struct ath10k*,struct sk_buff*,struct ieee80211_rx_status*,int *,int) ;

__attribute__((used)) static void ath10k_htt_rx_h_undecap(struct ath10k *ar,
        struct sk_buff *msdu,
        struct ieee80211_rx_status *status,
        u8 first_hdr[64],
        enum htt_rx_mpdu_encrypt_type enctype,
        bool is_decrypted)
{
 struct htt_rx_desc *rxd;
 enum rx_msdu_decap_format decap;
 rxd = (void *)msdu->data - sizeof(*rxd);
 decap = MS(__le32_to_cpu(rxd->msdu_start.common.info1),
     RX_MSDU_START_INFO1_DECAP_FORMAT);

 switch (decap) {
 case 128:
  ath10k_htt_rx_h_undecap_raw(ar, msdu, status, enctype,
         is_decrypted, first_hdr);
  break;
 case 129:
  ath10k_htt_rx_h_undecap_nwifi(ar, msdu, status, first_hdr,
           enctype);
  break;
 case 130:
  ath10k_htt_rx_h_undecap_eth(ar, msdu, status, first_hdr, enctype);
  break;
 case 131:
  ath10k_htt_rx_h_undecap_snap(ar, msdu, status, first_hdr,
          enctype);
  break;
 }
}
