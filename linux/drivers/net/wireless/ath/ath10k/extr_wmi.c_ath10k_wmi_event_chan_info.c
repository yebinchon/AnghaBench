
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wmi_ch_info_ev_arg {int mac_clk_mhz; int cycle_count; int rx_clear_count; int noise_floor; int cmd_flags; int freq; int err_code; } ;
struct sk_buff {int dummy; } ;
struct chan_info_params {void* cycle_count; void* rx_clear_count; void* noise_floor; void* cmd_flags; void* freq; void* err_code; void* mac_clk_mhz; } ;
struct TYPE_4__ {int state; } ;
struct ath10k {int data_lock; TYPE_3__* running_fw; TYPE_1__ scan; } ;
struct TYPE_5__ {int fw_features; } ;
struct TYPE_6__ {TYPE_2__ fw_file; } ;


 int ATH10K_DBG_WMI ;
 int ATH10K_FW_FEATURE_SINGLE_CHAN_INFO_PER_CHANNEL ;




 void* __le32_to_cpu (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*,void*,void*,void*,void*,void*,void*) ;
 int ath10k_warn (struct ath10k*,char*,...) ;
 int ath10k_wmi_event_chan_info_paired (struct ath10k*,struct chan_info_params*) ;
 int ath10k_wmi_event_chan_info_unpaired (struct ath10k*,struct chan_info_params*) ;
 int ath10k_wmi_pull_ch_info (struct ath10k*,struct sk_buff*,struct wmi_ch_info_ev_arg*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ test_bit (int ,int ) ;

void ath10k_wmi_event_chan_info(struct ath10k *ar, struct sk_buff *skb)
{
 struct chan_info_params ch_info_param;
 struct wmi_ch_info_ev_arg arg = {};
 int ret;

 ret = ath10k_wmi_pull_ch_info(ar, skb, &arg);
 if (ret) {
  ath10k_warn(ar, "failed to parse chan info event: %d\n", ret);
  return;
 }

 ch_info_param.err_code = __le32_to_cpu(arg.err_code);
 ch_info_param.freq = __le32_to_cpu(arg.freq);
 ch_info_param.cmd_flags = __le32_to_cpu(arg.cmd_flags);
 ch_info_param.noise_floor = __le32_to_cpu(arg.noise_floor);
 ch_info_param.rx_clear_count = __le32_to_cpu(arg.rx_clear_count);
 ch_info_param.cycle_count = __le32_to_cpu(arg.cycle_count);
 ch_info_param.mac_clk_mhz = __le32_to_cpu(arg.mac_clk_mhz);

 ath10k_dbg(ar, ATH10K_DBG_WMI,
     "chan info err_code %d freq %d cmd_flags %d noise_floor %d rx_clear_count %d cycle_count %d\n",
     ch_info_param.err_code, ch_info_param.freq, ch_info_param.cmd_flags,
     ch_info_param.noise_floor, ch_info_param.rx_clear_count,
     ch_info_param.cycle_count);

 spin_lock_bh(&ar->data_lock);

 switch (ar->scan.state) {
 case 130:
 case 128:
  ath10k_warn(ar, "received chan info event without a scan request, ignoring\n");
  goto exit;
 case 129:
 case 131:
  break;
 }

 if (test_bit(ATH10K_FW_FEATURE_SINGLE_CHAN_INFO_PER_CHANNEL,
       ar->running_fw->fw_file.fw_features))
  ath10k_wmi_event_chan_info_unpaired(ar, &ch_info_param);
 else
  ath10k_wmi_event_chan_info_paired(ar, &ch_info_param);

exit:
 spin_unlock_bh(&ar->data_lock);
}
