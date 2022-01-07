
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct stats_rx_phy {int plcp_err; int false_alarm_cnt; } ;
struct stats_rx_non_phy {scalar_t__ interference_data_flag; int beacon_energy_c; int beacon_energy_b; int beacon_energy_a; int beacon_silence_rssi_c; int beacon_silence_rssi_b; int beacon_silence_rssi_a; int channel_load; } ;
struct stats_general_data {void* beacon_energy_c; void* beacon_energy_b; void* beacon_energy_a; void* beacon_silence_rssi_c; void* beacon_silence_rssi_b; void* beacon_silence_rssi_a; } ;
struct il_sensitivity_data {scalar_t__ last_bad_plcp_cnt_cck; scalar_t__ last_bad_plcp_cnt_ofdm; scalar_t__ last_fa_cnt_ofdm; scalar_t__ last_fa_cnt_cck; } ;
struct il_priv {int lock; struct il_sensitivity_data sensitivity_data; scalar_t__ disable_sens_cal; } ;
struct TYPE_2__ {struct stats_rx_phy cck; struct stats_rx_phy ofdm; struct stats_rx_non_phy general; } ;
struct il_notif_stats {TYPE_1__ rx; } ;


 int D_CALIB (char*,...) ;
 scalar_t__ INTERFERENCE_DATA_AVAILABLE ;
 int il4965_sens_auto_corr_ofdm (struct il_priv*,scalar_t__,scalar_t__) ;
 int il4965_sens_energy_cck (struct il_priv*,scalar_t__,scalar_t__,struct stats_general_data*) ;
 int il4965_sensitivity_write (struct il_priv*) ;
 int il_is_any_associated (struct il_priv*) ;
 void* le32_to_cpu (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
il4965_sensitivity_calibration(struct il_priv *il, void *resp)
{
 u32 rx_enable_time;
 u32 fa_cck;
 u32 fa_ofdm;
 u32 bad_plcp_cck;
 u32 bad_plcp_ofdm;
 u32 norm_fa_ofdm;
 u32 norm_fa_cck;
 struct il_sensitivity_data *data = ((void*)0);
 struct stats_rx_non_phy *rx_info;
 struct stats_rx_phy *ofdm, *cck;
 unsigned long flags;
 struct stats_general_data statis;

 if (il->disable_sens_cal)
  return;

 data = &(il->sensitivity_data);

 if (!il_is_any_associated(il)) {
  D_CALIB("<< - not associated\n");
  return;
 }

 spin_lock_irqsave(&il->lock, flags);

 rx_info = &(((struct il_notif_stats *)resp)->rx.general);
 ofdm = &(((struct il_notif_stats *)resp)->rx.ofdm);
 cck = &(((struct il_notif_stats *)resp)->rx.cck);

 if (rx_info->interference_data_flag != INTERFERENCE_DATA_AVAILABLE) {
  D_CALIB("<< invalid data.\n");
  spin_unlock_irqrestore(&il->lock, flags);
  return;
 }


 rx_enable_time = le32_to_cpu(rx_info->channel_load);
 fa_cck = le32_to_cpu(cck->false_alarm_cnt);
 fa_ofdm = le32_to_cpu(ofdm->false_alarm_cnt);
 bad_plcp_cck = le32_to_cpu(cck->plcp_err);
 bad_plcp_ofdm = le32_to_cpu(ofdm->plcp_err);

 statis.beacon_silence_rssi_a =
     le32_to_cpu(rx_info->beacon_silence_rssi_a);
 statis.beacon_silence_rssi_b =
     le32_to_cpu(rx_info->beacon_silence_rssi_b);
 statis.beacon_silence_rssi_c =
     le32_to_cpu(rx_info->beacon_silence_rssi_c);
 statis.beacon_energy_a = le32_to_cpu(rx_info->beacon_energy_a);
 statis.beacon_energy_b = le32_to_cpu(rx_info->beacon_energy_b);
 statis.beacon_energy_c = le32_to_cpu(rx_info->beacon_energy_c);

 spin_unlock_irqrestore(&il->lock, flags);

 D_CALIB("rx_enable_time = %u usecs\n", rx_enable_time);

 if (!rx_enable_time) {
  D_CALIB("<< RX Enable Time == 0!\n");
  return;
 }




 if (data->last_bad_plcp_cnt_cck > bad_plcp_cck)
  data->last_bad_plcp_cnt_cck = bad_plcp_cck;
 else {
  bad_plcp_cck -= data->last_bad_plcp_cnt_cck;
  data->last_bad_plcp_cnt_cck += bad_plcp_cck;
 }

 if (data->last_bad_plcp_cnt_ofdm > bad_plcp_ofdm)
  data->last_bad_plcp_cnt_ofdm = bad_plcp_ofdm;
 else {
  bad_plcp_ofdm -= data->last_bad_plcp_cnt_ofdm;
  data->last_bad_plcp_cnt_ofdm += bad_plcp_ofdm;
 }

 if (data->last_fa_cnt_ofdm > fa_ofdm)
  data->last_fa_cnt_ofdm = fa_ofdm;
 else {
  fa_ofdm -= data->last_fa_cnt_ofdm;
  data->last_fa_cnt_ofdm += fa_ofdm;
 }

 if (data->last_fa_cnt_cck > fa_cck)
  data->last_fa_cnt_cck = fa_cck;
 else {
  fa_cck -= data->last_fa_cnt_cck;
  data->last_fa_cnt_cck += fa_cck;
 }


 norm_fa_ofdm = fa_ofdm + bad_plcp_ofdm;
 norm_fa_cck = fa_cck + bad_plcp_cck;

 D_CALIB("cck: fa %u badp %u  ofdm: fa %u badp %u\n", fa_cck,
  bad_plcp_cck, fa_ofdm, bad_plcp_ofdm);

 il4965_sens_auto_corr_ofdm(il, norm_fa_ofdm, rx_enable_time);
 il4965_sens_energy_cck(il, norm_fa_cck, rx_enable_time, &statis);

 il4965_sensitivity_write(il);
}
