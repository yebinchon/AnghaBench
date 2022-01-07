
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u32 ;
struct statistics_tx {scalar_t__ temperature; } ;
struct statistics_rx_phy {scalar_t__ temperature; } ;
struct statistics_rx_non_phy {scalar_t__ temperature; } ;
struct statistics_rx_ht_phy {scalar_t__ temperature; } ;
struct statistics_general_common {scalar_t__ temperature; } ;
struct statistics_bt_activity {scalar_t__ temperature; } ;
struct TYPE_15__ {scalar_t__ cmd; } ;
struct iwl_rx_packet {TYPE_6__ hdr; int data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct TYPE_18__ {scalar_t__ temperature; } ;
struct TYPE_17__ {int flag; int lock; TYPE_9__ bt_activity; TYPE_9__ tx; TYPE_9__ rx_cck; TYPE_9__ rx_ofdm_ht; TYPE_9__ rx_ofdm; TYPE_9__ rx_non_phy; TYPE_9__ common; int accum_num_bt_kills; int num_bt_kills; } ;
struct iwl_priv {unsigned long rx_statistics_jiffies; TYPE_8__ statistics; TYPE_7__* lib; int run_time_calib_work; int workqueue; int status; int statistics_periodic; } ;
struct TYPE_14__ {struct statistics_tx cck; struct statistics_tx ofdm_ht; struct statistics_tx ofdm; struct statistics_tx general; } ;
struct TYPE_13__ {struct statistics_tx common; } ;
struct iwl_notif_statistics {int flag; struct statistics_tx tx; TYPE_5__ rx; TYPE_4__ general; } ;
struct TYPE_11__ {int num_bt_kills; struct statistics_tx common; } ;
struct TYPE_12__ {TYPE_2__ general; struct statistics_tx cck; struct statistics_tx ofdm_ht; struct statistics_tx ofdm; } ;
struct TYPE_10__ {struct statistics_tx activity; struct statistics_tx common; } ;
struct iwl_bt_notif_statistics {int flag; TYPE_3__ rx; TYPE_1__ general; struct statistics_tx tx; } ;
typedef int __le32 ;
struct TYPE_16__ {int (* temperature ) (struct iwl_priv*) ;} ;


 int IWL_DEBUG_RX (struct iwl_priv*,char*,int) ;
 scalar_t__ STATISTICS_NOTIFICATION ;
 int STATISTICS_REPLY_FLG_HT40_MODE_MSK ;
 int STATUS_SCANNING ;
 int STATUS_STATISTICS ;
 int WARN_ONCE (int,char*,int,int,int) ;
 int iwl_rx_packet_payload_len (struct iwl_rx_packet*) ;
 int iwlagn_accumulative_statistics (struct iwl_priv*,struct statistics_tx*,struct statistics_tx*,struct statistics_tx*,struct statistics_tx*,struct statistics_tx*,struct statistics_tx*,struct statistics_tx*) ;
 int iwlagn_recover_from_statistics (struct iwl_priv*,struct statistics_tx*,struct statistics_tx*,struct statistics_tx*,unsigned long) ;
 int iwlagn_rx_calc_noise (struct iwl_priv*) ;
 unsigned long jiffies ;
 int le32_add_cpu (int *,int ) ;
 int le32_to_cpu (int ) ;
 int memcpy (TYPE_9__*,struct statistics_tx*,int) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int const) ;
 int queue_work (int ,int *) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct iwl_priv*) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void iwlagn_rx_statistics(struct iwl_priv *priv,
     struct iwl_rx_cmd_buffer *rxb)
{
 unsigned long stamp = jiffies;
 const int reg_recalib_period = 60;
 int change;
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 u32 len = iwl_rx_packet_payload_len(pkt);
 __le32 *flag;
 struct statistics_general_common *common;
 struct statistics_rx_non_phy *rx_non_phy;
 struct statistics_rx_phy *rx_ofdm;
 struct statistics_rx_ht_phy *rx_ofdm_ht;
 struct statistics_rx_phy *rx_cck;
 struct statistics_tx *tx;
 struct statistics_bt_activity *bt_activity;

 IWL_DEBUG_RX(priv, "Statistics notification received (%d bytes).\n",
       len);

 spin_lock(&priv->statistics.lock);

 if (len == sizeof(struct iwl_bt_notif_statistics)) {
  struct iwl_bt_notif_statistics *stats;
  stats = (void *)&pkt->data;
  flag = &stats->flag;
  common = &stats->general.common;
  rx_non_phy = &stats->rx.general.common;
  rx_ofdm = &stats->rx.ofdm;
  rx_ofdm_ht = &stats->rx.ofdm_ht;
  rx_cck = &stats->rx.cck;
  tx = &stats->tx;
  bt_activity = &stats->general.activity;







 } else if (len == sizeof(struct iwl_notif_statistics)) {
  struct iwl_notif_statistics *stats;
  stats = (void *)&pkt->data;
  flag = &stats->flag;
  common = &stats->general.common;
  rx_non_phy = &stats->rx.general;
  rx_ofdm = &stats->rx.ofdm;
  rx_ofdm_ht = &stats->rx.ofdm_ht;
  rx_cck = &stats->rx.cck;
  tx = &stats->tx;
  bt_activity = ((void*)0);
 } else {
  WARN_ONCE(1, "len %d doesn't match BT (%zu) or normal (%zu)\n",
     len, sizeof(struct iwl_bt_notif_statistics),
     sizeof(struct iwl_notif_statistics));
  spin_unlock(&priv->statistics.lock);
  return;
 }

 change = common->temperature != priv->statistics.common.temperature ||
   (*flag & STATISTICS_REPLY_FLG_HT40_MODE_MSK) !=
   (priv->statistics.flag & STATISTICS_REPLY_FLG_HT40_MODE_MSK);

 iwlagn_accumulative_statistics(priv, common, rx_non_phy, rx_ofdm,
        rx_ofdm_ht, rx_cck, tx, bt_activity);

 iwlagn_recover_from_statistics(priv, rx_ofdm, rx_ofdm_ht, tx, stamp);

 priv->statistics.flag = *flag;
 memcpy(&priv->statistics.common, common, sizeof(*common));
 memcpy(&priv->statistics.rx_non_phy, rx_non_phy, sizeof(*rx_non_phy));
 memcpy(&priv->statistics.rx_ofdm, rx_ofdm, sizeof(*rx_ofdm));
 memcpy(&priv->statistics.rx_ofdm_ht, rx_ofdm_ht, sizeof(*rx_ofdm_ht));
 memcpy(&priv->statistics.rx_cck, rx_cck, sizeof(*rx_cck));
 memcpy(&priv->statistics.tx, tx, sizeof(*tx));






 priv->rx_statistics_jiffies = stamp;

 set_bit(STATUS_STATISTICS, &priv->status);





 mod_timer(&priv->statistics_periodic, jiffies +
    msecs_to_jiffies(reg_recalib_period * 1000));

 if (unlikely(!test_bit(STATUS_SCANNING, &priv->status)) &&
     (pkt->hdr.cmd == STATISTICS_NOTIFICATION)) {
  iwlagn_rx_calc_noise(priv);
  queue_work(priv->workqueue, &priv->run_time_calib_work);
 }
 if (priv->lib->temperature && change)
  priv->lib->temperature(priv);

 spin_unlock(&priv->statistics.lock);
}
