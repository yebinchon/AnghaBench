
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
typedef int u16 ;
struct htt_rx_indication_mpdu_range {scalar_t__ mpdu_count; } ;
struct TYPE_2__ {int info0; int peer_id; int info1; } ;
struct htt_rx_indication {TYPE_1__ hdr; } ;
struct ath10k_htt {int num_mpdus_ready; struct ath10k* ar; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_HTT_DUMP ;
 int HTT_RX_INDICATION_INFO0_EXT_TID ;
 int HTT_RX_INDICATION_INFO1_NUM_MPDU_RANGES ;
 void* MS (int ,int ) ;
 int __le16_to_cpu (int ) ;
 int __le32_to_cpu (int ) ;
 int ath10k_dbg_dump (struct ath10k*,int ,int *,char*,struct htt_rx_indication*,int ) ;
 int ath10k_sta_update_rx_tid_stats_ampdu (struct ath10k*,int ,void*,struct htt_rx_indication_mpdu_range*,int) ;
 int atomic_add (int,int *) ;
 struct htt_rx_indication_mpdu_range* htt_rx_ind_get_mpdu_ranges (struct htt_rx_indication*) ;
 int struct_size (struct htt_rx_indication*,struct htt_rx_indication_mpdu_range*,int) ;

__attribute__((used)) static void ath10k_htt_rx_proc_rx_ind_ll(struct ath10k_htt *htt,
      struct htt_rx_indication *rx)
{
 struct ath10k *ar = htt->ar;
 struct htt_rx_indication_mpdu_range *mpdu_ranges;
 int num_mpdu_ranges;
 int i, mpdu_count = 0;
 u16 peer_id;
 u8 tid;

 num_mpdu_ranges = MS(__le32_to_cpu(rx->hdr.info1),
        HTT_RX_INDICATION_INFO1_NUM_MPDU_RANGES);
 peer_id = __le16_to_cpu(rx->hdr.peer_id);
 tid = MS(rx->hdr.info0, HTT_RX_INDICATION_INFO0_EXT_TID);

 mpdu_ranges = htt_rx_ind_get_mpdu_ranges(rx);

 ath10k_dbg_dump(ar, ATH10K_DBG_HTT_DUMP, ((void*)0), "htt rx ind: ",
   rx, struct_size(rx, mpdu_ranges, num_mpdu_ranges));

 for (i = 0; i < num_mpdu_ranges; i++)
  mpdu_count += mpdu_ranges[i].mpdu_count;

 atomic_add(mpdu_count, &htt->num_mpdus_ready);

 ath10k_sta_update_rx_tid_stats_ampdu(ar, peer_id, tid, mpdu_ranges,
          num_mpdu_ranges);
}
