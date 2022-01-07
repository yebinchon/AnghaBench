
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct TYPE_12__ {int arp_matched; int arp_replied; int arp_received; } ;
struct TYPE_11__ {int wow_evt_discarded; scalar_t__ wow_host_evt_wakeups; scalar_t__ wow_host_pkt_wakeups; int wow_pkt_dropped; } ;
struct TYPE_10__ {int cs_rssi; int cs_snr; int cs_last_roam_msec; int cs_ave_beacon_rssi; int cs_discon_cnt; int cs_connect_cnt; int cs_low_rssi_cnt; int cs_bmiss_cnt; } ;
struct TYPE_9__ {int pwr_save_failure_cnt; } ;
struct tkip_ccmp_stats {int ccmp_replays; int ccmp_fmt_err; int tkip_fmt_err; int tkip_cnter_measures_invoked; int tkip_local_mic_fail; } ;
struct TYPE_8__ {int ucast_rate; int dupl_frame; int decrypt_err; int key_cache_miss; int crc_err; int err; int frgment_pkt; int bcast_byte; int bcast_pkt; int mcast_byte; int mcast_pkt; int ucast_byte; int ucast_pkt; int byte; int pkt; } ;
struct TYPE_13__ {int ucast_rate; int rts_fail_cnt; int mult_retry_cnt; int retry_cnt; int fail_cnt; int err; int * pkt_per_ac; int rts_success_cnt; int bcast_byte; int bcast_pkt; int mcast_byte; int mcast_pkt; int ucast_byte; int ucast_pkt; int byte; int pkt; } ;
struct TYPE_14__ {struct tkip_ccmp_stats tkip_ccmp_stats; TYPE_1__ rx; TYPE_6__ tx; } ;
struct wmi_target_stats {TYPE_5__ arp_stats; TYPE_4__ wow_stats; int lq_val; TYPE_3__ cserv_stats; int noise_floor_calib; TYPE_2__ pm_stats; TYPE_7__ stats; } ;
struct target_stats {void* arp_matched; void* arp_replied; void* arp_received; int wow_evt_discarded; int wow_host_evt_wakeups; int wow_host_pkt_wakeups; int wow_pkt_dropped; void* lq_val; void* cs_rssi; int cs_snr; int cs_last_roam_msec; void* cs_ave_beacon_rssi; int cs_discon_cnt; int cs_connect_cnt; int cs_low_rssi_cnt; int cs_bmiss_cnt; void* noise_floor_calib; int pwr_save_fail_cnt; int ccmp_replays; int ccmp_fmt_err; int tkip_fmt_err; int tkip_cnter_measures_invoked; int tkip_local_mic_fail; void* rx_ucast_rate; int rx_dupl_frame; int rx_decrypt_err; int rx_key_cache_miss; int rx_crc_err; int rx_err; int rx_frgment_pkt; int rx_bcast_byte; int rx_bcast_pkt; int rx_mcast_byte; int rx_mcast_pkt; int rx_ucast_byte; int rx_ucast_pkt; int rx_byte; int rx_pkt; void* tx_ucast_rate; int tx_rts_fail_cnt; int tx_mult_retry_cnt; int tx_retry_cnt; int tx_fail_cnt; int tx_err; int * tx_pkt_per_ac; int tx_rts_success_cnt; int tx_bcast_byte; int tx_bcast_pkt; int tx_mcast_byte; int tx_mcast_pkt; int tx_ucast_byte; int tx_ucast_pkt; int tx_byte; int tx_pkt; } ;
struct ath6kl_vif {int flags; struct target_stats target_stats; struct ath6kl* ar; } ;
struct ath6kl {int event_wq; int wmi; } ;
typedef void* s32 ;


 int ATH6KL_DBG_TRC ;
 int STATS_UPDATE_PEND ;
 size_t WMM_NUM_AC ;
 void* a_sle16_to_cpu (int ) ;
 void* a_sle32_to_cpu (int ) ;
 int ath6kl_dbg (int ,char*) ;
 void* ath6kl_wmi_get_rate (int ,void*) ;
 int clear_bit (int ,int *) ;
 scalar_t__ le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void ath6kl_update_target_stats(struct ath6kl_vif *vif, u8 *ptr, u32 len)
{
 struct wmi_target_stats *tgt_stats =
  (struct wmi_target_stats *) ptr;
 struct ath6kl *ar = vif->ar;
 struct target_stats *stats = &vif->target_stats;
 struct tkip_ccmp_stats *ccmp_stats;
 s32 rate;
 u8 ac;

 if (len < sizeof(*tgt_stats))
  return;

 ath6kl_dbg(ATH6KL_DBG_TRC, "updating target stats\n");

 stats->tx_pkt += le32_to_cpu(tgt_stats->stats.tx.pkt);
 stats->tx_byte += le32_to_cpu(tgt_stats->stats.tx.byte);
 stats->tx_ucast_pkt += le32_to_cpu(tgt_stats->stats.tx.ucast_pkt);
 stats->tx_ucast_byte += le32_to_cpu(tgt_stats->stats.tx.ucast_byte);
 stats->tx_mcast_pkt += le32_to_cpu(tgt_stats->stats.tx.mcast_pkt);
 stats->tx_mcast_byte += le32_to_cpu(tgt_stats->stats.tx.mcast_byte);
 stats->tx_bcast_pkt += le32_to_cpu(tgt_stats->stats.tx.bcast_pkt);
 stats->tx_bcast_byte += le32_to_cpu(tgt_stats->stats.tx.bcast_byte);
 stats->tx_rts_success_cnt +=
  le32_to_cpu(tgt_stats->stats.tx.rts_success_cnt);

 for (ac = 0; ac < WMM_NUM_AC; ac++)
  stats->tx_pkt_per_ac[ac] +=
   le32_to_cpu(tgt_stats->stats.tx.pkt_per_ac[ac]);

 stats->tx_err += le32_to_cpu(tgt_stats->stats.tx.err);
 stats->tx_fail_cnt += le32_to_cpu(tgt_stats->stats.tx.fail_cnt);
 stats->tx_retry_cnt += le32_to_cpu(tgt_stats->stats.tx.retry_cnt);
 stats->tx_mult_retry_cnt +=
  le32_to_cpu(tgt_stats->stats.tx.mult_retry_cnt);
 stats->tx_rts_fail_cnt +=
  le32_to_cpu(tgt_stats->stats.tx.rts_fail_cnt);

 rate = a_sle32_to_cpu(tgt_stats->stats.tx.ucast_rate);
 stats->tx_ucast_rate = ath6kl_wmi_get_rate(ar->wmi, rate);

 stats->rx_pkt += le32_to_cpu(tgt_stats->stats.rx.pkt);
 stats->rx_byte += le32_to_cpu(tgt_stats->stats.rx.byte);
 stats->rx_ucast_pkt += le32_to_cpu(tgt_stats->stats.rx.ucast_pkt);
 stats->rx_ucast_byte += le32_to_cpu(tgt_stats->stats.rx.ucast_byte);
 stats->rx_mcast_pkt += le32_to_cpu(tgt_stats->stats.rx.mcast_pkt);
 stats->rx_mcast_byte += le32_to_cpu(tgt_stats->stats.rx.mcast_byte);
 stats->rx_bcast_pkt += le32_to_cpu(tgt_stats->stats.rx.bcast_pkt);
 stats->rx_bcast_byte += le32_to_cpu(tgt_stats->stats.rx.bcast_byte);
 stats->rx_frgment_pkt += le32_to_cpu(tgt_stats->stats.rx.frgment_pkt);
 stats->rx_err += le32_to_cpu(tgt_stats->stats.rx.err);
 stats->rx_crc_err += le32_to_cpu(tgt_stats->stats.rx.crc_err);
 stats->rx_key_cache_miss +=
  le32_to_cpu(tgt_stats->stats.rx.key_cache_miss);
 stats->rx_decrypt_err += le32_to_cpu(tgt_stats->stats.rx.decrypt_err);
 stats->rx_dupl_frame += le32_to_cpu(tgt_stats->stats.rx.dupl_frame);

 rate = a_sle32_to_cpu(tgt_stats->stats.rx.ucast_rate);
 stats->rx_ucast_rate = ath6kl_wmi_get_rate(ar->wmi, rate);

 ccmp_stats = &tgt_stats->stats.tkip_ccmp_stats;

 stats->tkip_local_mic_fail +=
  le32_to_cpu(ccmp_stats->tkip_local_mic_fail);
 stats->tkip_cnter_measures_invoked +=
  le32_to_cpu(ccmp_stats->tkip_cnter_measures_invoked);
 stats->tkip_fmt_err += le32_to_cpu(ccmp_stats->tkip_fmt_err);

 stats->ccmp_fmt_err += le32_to_cpu(ccmp_stats->ccmp_fmt_err);
 stats->ccmp_replays += le32_to_cpu(ccmp_stats->ccmp_replays);

 stats->pwr_save_fail_cnt +=
  le32_to_cpu(tgt_stats->pm_stats.pwr_save_failure_cnt);
 stats->noise_floor_calib =
  a_sle32_to_cpu(tgt_stats->noise_floor_calib);

 stats->cs_bmiss_cnt +=
  le32_to_cpu(tgt_stats->cserv_stats.cs_bmiss_cnt);
 stats->cs_low_rssi_cnt +=
  le32_to_cpu(tgt_stats->cserv_stats.cs_low_rssi_cnt);
 stats->cs_connect_cnt +=
  le16_to_cpu(tgt_stats->cserv_stats.cs_connect_cnt);
 stats->cs_discon_cnt +=
  le16_to_cpu(tgt_stats->cserv_stats.cs_discon_cnt);

 stats->cs_ave_beacon_rssi =
  a_sle16_to_cpu(tgt_stats->cserv_stats.cs_ave_beacon_rssi);

 stats->cs_last_roam_msec =
  tgt_stats->cserv_stats.cs_last_roam_msec;
 stats->cs_snr = tgt_stats->cserv_stats.cs_snr;
 stats->cs_rssi = a_sle16_to_cpu(tgt_stats->cserv_stats.cs_rssi);

 stats->lq_val = le32_to_cpu(tgt_stats->lq_val);

 stats->wow_pkt_dropped +=
  le32_to_cpu(tgt_stats->wow_stats.wow_pkt_dropped);
 stats->wow_host_pkt_wakeups +=
  tgt_stats->wow_stats.wow_host_pkt_wakeups;
 stats->wow_host_evt_wakeups +=
  tgt_stats->wow_stats.wow_host_evt_wakeups;
 stats->wow_evt_discarded +=
  le16_to_cpu(tgt_stats->wow_stats.wow_evt_discarded);

 stats->arp_received = le32_to_cpu(tgt_stats->arp_stats.arp_received);
 stats->arp_replied = le32_to_cpu(tgt_stats->arp_stats.arp_replied);
 stats->arp_matched = le32_to_cpu(tgt_stats->arp_stats.arp_matched);

 if (test_bit(STATS_UPDATE_PEND, &vif->flags)) {
  clear_bit(STATS_UPDATE_PEND, &vif->flags);
  wake_up(&ar->event_wq);
 }
}
