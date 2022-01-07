
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct wmi_pdev_bss_chan_info_event {int cycle_rx_bss; int cycle_rx; int cycle_tx; int cycle_total; int cycle_busy; int noise_floor; int freq; } ;
struct survey_info {int filled; void* time_tx; void* time_rx; void* time_busy; void* time; int noise; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct TYPE_2__ {int channel_counters_freq_hz; } ;
struct ath10k {int bss_survey_done; int data_lock; struct survey_info* survey; TYPE_1__ hw_params; } ;


 int ARRAY_SIZE (struct survey_info*) ;
 int ATH10K_DBG_WMI ;
 int EPROTO ;
 int SURVEY_INFO_NOISE_DBM ;
 int SURVEY_INFO_TIME ;
 int SURVEY_INFO_TIME_BUSY ;
 int SURVEY_INFO_TIME_RX ;
 int SURVEY_INFO_TIME_TX ;
 scalar_t__ WARN_ON (int) ;
 int __le32_to_cpu (int ) ;
 int __le64_to_cpu (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ,int ,int ,int ,int ,int ,int ) ;
 int ath10k_warn (struct ath10k*,char*,int ,int) ;
 int complete (int *) ;
 void* div_u64 (int ,int ) ;
 int freq_to_idx (struct ath10k*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ath10k_wmi_event_pdev_bss_chan_info(struct ath10k *ar,
            struct sk_buff *skb)
{
 struct wmi_pdev_bss_chan_info_event *ev;
 struct survey_info *survey;
 u64 busy, total, tx, rx, rx_bss;
 u32 freq, noise_floor;
 u32 cc_freq_hz = ar->hw_params.channel_counters_freq_hz;
 int idx;

 ev = (struct wmi_pdev_bss_chan_info_event *)skb->data;
 if (WARN_ON(skb->len < sizeof(*ev)))
  return -EPROTO;

 freq = __le32_to_cpu(ev->freq);
 noise_floor = __le32_to_cpu(ev->noise_floor);
 busy = __le64_to_cpu(ev->cycle_busy);
 total = __le64_to_cpu(ev->cycle_total);
 tx = __le64_to_cpu(ev->cycle_tx);
 rx = __le64_to_cpu(ev->cycle_rx);
 rx_bss = __le64_to_cpu(ev->cycle_rx_bss);

 ath10k_dbg(ar, ATH10K_DBG_WMI,
     "wmi event pdev bss chan info:\n freq: %d noise: %d cycle: busy %llu total %llu tx %llu rx %llu rx_bss %llu\n",
     freq, noise_floor, busy, total, tx, rx, rx_bss);

 spin_lock_bh(&ar->data_lock);
 idx = freq_to_idx(ar, freq);
 if (idx >= ARRAY_SIZE(ar->survey)) {
  ath10k_warn(ar, "bss chan info: invalid frequency %d (idx %d out of bounds)\n",
       freq, idx);
  goto exit;
 }

 survey = &ar->survey[idx];

 survey->noise = noise_floor;
 survey->time = div_u64(total, cc_freq_hz);
 survey->time_busy = div_u64(busy, cc_freq_hz);
 survey->time_rx = div_u64(rx_bss, cc_freq_hz);
 survey->time_tx = div_u64(tx, cc_freq_hz);
 survey->filled |= (SURVEY_INFO_NOISE_DBM |
        SURVEY_INFO_TIME |
        SURVEY_INFO_TIME_BUSY |
        SURVEY_INFO_TIME_RX |
        SURVEY_INFO_TIME_TX);
exit:
 spin_unlock_bh(&ar->data_lock);
 complete(&ar->bss_survey_done);
 return 0;
}
