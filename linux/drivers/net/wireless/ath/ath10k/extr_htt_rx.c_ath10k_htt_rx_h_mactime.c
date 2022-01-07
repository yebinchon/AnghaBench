
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_rx_status {int flag; int mactime; } ;
struct TYPE_3__ {int tsf_timestamp; } ;
struct TYPE_4__ {TYPE_1__ common; } ;
struct htt_rx_desc {TYPE_2__ ppdu_end; } ;
struct ath10k {int dummy; } ;


 int RX_FLAG_MACTIME_END ;
 int __le32_to_cpu (int ) ;

__attribute__((used)) static void ath10k_htt_rx_h_mactime(struct ath10k *ar,
        struct ieee80211_rx_status *status,
        struct htt_rx_desc *rxd)
{






 status->mactime = __le32_to_cpu(rxd->ppdu_end.common.tsf_timestamp);
 status->flag |= RX_FLAG_MACTIME_END;
}
