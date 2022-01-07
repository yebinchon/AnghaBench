
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct iwl_rx_packet {int data; } ;
struct TYPE_13__ {int air_time; int byte_count; int avg_energy; } ;
struct TYPE_23__ {int on_time_scan; int on_time_rf; int tx_time; int rx_time; int beacon_filter_average_energy; } ;
struct TYPE_24__ {TYPE_8__ common; } ;
struct TYPE_18__ {int mac_id; } ;
struct TYPE_19__ {TYPE_3__ general; } ;
struct iwl_notif_statistics_v11 {TYPE_10__ load_stats; int flag; TYPE_9__ general; TYPE_4__ rx; } ;
struct iwl_notif_statistics_v10 {int dummy; } ;
struct TYPE_14__ {int air_time; int byte_count; int avg_energy; } ;
struct TYPE_20__ {int mac_id; } ;
struct TYPE_21__ {TYPE_5__ general; } ;
struct iwl_notif_statistics {TYPE_11__ load_stats; int flag; TYPE_9__ general; TYPE_6__ rx; } ;
struct TYPE_17__ {int airtime; } ;
struct TYPE_16__ {int rx_bytes; int rate; } ;
struct iwl_mvm_tcm_mac {TYPE_2__ rx; TYPE_1__ uapsd_nonagg_detect; } ;
struct iwl_mvm_stat_data {TYPE_9__* general; int beacon_filter_average_energy; int mac_id; struct iwl_mvm* mvm; } ;
struct iwl_mvm_sta {scalar_t__ avg_energy; } ;
struct TYPE_15__ {int lock; struct iwl_mvm_tcm_mac* data; } ;
struct TYPE_22__ {void* on_time_scan; void* on_time_rf; void* tx_time; void* rx_time; } ;
struct iwl_mvm {TYPE_12__ tcm; int fw_id_to_mac_id; int hw; TYPE_7__ radio_stats; TYPE_6__ rx_stats; TYPE_4__ rx_stats_v3; } ;
typedef int __le32 ;


 int ARRAY_SIZE (int ) ;
 int IEEE80211_IFACE_ITER_NORMAL ;
 int IWL_STATISTICS_REPLY_FLG_CLEAR ;
 int NUM_MAC_INDEX_DRIVER ;
 scalar_t__ WARN_ONCE (int,char*,int) ;
 int ewma_rate_add (int *,int) ;
 int ewma_rate_init (int *) ;
 int ieee80211_iterate_active_interfaces (int ,int ,int ,struct iwl_mvm_stat_data*) ;
 scalar_t__ iwl_mvm_has_new_rx_api (struct iwl_mvm*) ;
 int iwl_mvm_has_new_rx_stats_api (struct iwl_mvm*) ;
 int iwl_mvm_rx_stats_check_trigger (struct iwl_mvm*,struct iwl_rx_packet*) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_staid_rcu (struct iwl_mvm*,int) ;
 int iwl_mvm_stat_iterator ;
 int iwl_rx_packet_payload_len (struct iwl_rx_packet*) ;
 int le32_to_cpu (int ) ;
 void* le64_to_cpu (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void iwl_mvm_handle_rx_statistics(struct iwl_mvm *mvm,
      struct iwl_rx_packet *pkt)
{
 struct iwl_mvm_stat_data data = {
  .mvm = mvm,
 };
 int expected_size;
 int i;
 u8 *energy;
 __le32 *bytes;
 __le32 *air_time;
 __le32 flags;

 if (!iwl_mvm_has_new_rx_stats_api(mvm)) {
  if (iwl_mvm_has_new_rx_api(mvm))
   expected_size = sizeof(struct iwl_notif_statistics_v11);
  else
   expected_size = sizeof(struct iwl_notif_statistics_v10);
 } else {
  expected_size = sizeof(struct iwl_notif_statistics);
 }

 if (WARN_ONCE(iwl_rx_packet_payload_len(pkt) != expected_size,
        "received invalid statistics size (%d)!\n",
        iwl_rx_packet_payload_len(pkt)))
  return;

 if (!iwl_mvm_has_new_rx_stats_api(mvm)) {
  struct iwl_notif_statistics_v11 *stats = (void *)&pkt->data;

  data.mac_id = stats->rx.general.mac_id;
  data.beacon_filter_average_energy =
   stats->general.common.beacon_filter_average_energy;

  mvm->rx_stats_v3 = stats->rx;

  mvm->radio_stats.rx_time =
   le64_to_cpu(stats->general.common.rx_time);
  mvm->radio_stats.tx_time =
   le64_to_cpu(stats->general.common.tx_time);
  mvm->radio_stats.on_time_rf =
   le64_to_cpu(stats->general.common.on_time_rf);
  mvm->radio_stats.on_time_scan =
   le64_to_cpu(stats->general.common.on_time_scan);

  data.general = &stats->general;

  flags = stats->flag;
 } else {
  struct iwl_notif_statistics *stats = (void *)&pkt->data;

  data.mac_id = stats->rx.general.mac_id;
  data.beacon_filter_average_energy =
   stats->general.common.beacon_filter_average_energy;

  mvm->rx_stats = stats->rx;

  mvm->radio_stats.rx_time =
   le64_to_cpu(stats->general.common.rx_time);
  mvm->radio_stats.tx_time =
   le64_to_cpu(stats->general.common.tx_time);
  mvm->radio_stats.on_time_rf =
   le64_to_cpu(stats->general.common.on_time_rf);
  mvm->radio_stats.on_time_scan =
   le64_to_cpu(stats->general.common.on_time_scan);

  data.general = &stats->general;

  flags = stats->flag;
 }

 iwl_mvm_rx_stats_check_trigger(mvm, pkt);

 ieee80211_iterate_active_interfaces(mvm->hw,
         IEEE80211_IFACE_ITER_NORMAL,
         iwl_mvm_stat_iterator,
         &data);

 if (!iwl_mvm_has_new_rx_api(mvm))
  return;

 if (!iwl_mvm_has_new_rx_stats_api(mvm)) {
  struct iwl_notif_statistics_v11 *v11 = (void *)&pkt->data;

  energy = (void *)&v11->load_stats.avg_energy;
  bytes = (void *)&v11->load_stats.byte_count;
  air_time = (void *)&v11->load_stats.air_time;
 } else {
  struct iwl_notif_statistics *stats = (void *)&pkt->data;

  energy = (void *)&stats->load_stats.avg_energy;
  bytes = (void *)&stats->load_stats.byte_count;
  air_time = (void *)&stats->load_stats.air_time;
 }

 rcu_read_lock();
 for (i = 0; i < ARRAY_SIZE(mvm->fw_id_to_mac_id); i++) {
  struct iwl_mvm_sta *sta;

  if (!energy[i])
   continue;

  sta = iwl_mvm_sta_from_staid_rcu(mvm, i);
  if (!sta)
   continue;
  sta->avg_energy = energy[i];
 }
 rcu_read_unlock();






 if (!(le32_to_cpu(flags) & IWL_STATISTICS_REPLY_FLG_CLEAR))
  return;

 spin_lock(&mvm->tcm.lock);
 for (i = 0; i < NUM_MAC_INDEX_DRIVER; i++) {
  struct iwl_mvm_tcm_mac *mdata = &mvm->tcm.data[i];
  u32 airtime = le32_to_cpu(air_time[i]);
  u32 rx_bytes = le32_to_cpu(bytes[i]);

  mdata->uapsd_nonagg_detect.rx_bytes += rx_bytes;
  if (airtime) {

   ewma_rate_init(&mdata->uapsd_nonagg_detect.rate);
   ewma_rate_add(&mdata->uapsd_nonagg_detect.rate,
          rx_bytes * 8 / airtime);
  }

  mdata->rx.airtime += airtime;
 }
 spin_unlock(&mvm->tcm.lock);
}
