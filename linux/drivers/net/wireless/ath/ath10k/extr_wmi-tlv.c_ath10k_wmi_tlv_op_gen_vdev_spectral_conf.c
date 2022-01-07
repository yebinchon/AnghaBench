
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_vdev_spectral_conf_cmd {void* scan_chn_mask; void* scan_dbm_adj; void* scan_bin_scale; void* scan_rpt_mode; void* scan_pwr_format; void* scan_rssi_thr; void* scan_rssi_rpt_mode; void* scan_wb_rpt_mode; void* scan_str_bin_thr; void* scan_nb_tone_thr; void* scan_init_delay; void* scan_noise_floor_ref; void* scan_restart_ena; void* scan_gc_ena; void* scan_fft_size; void* scan_priority; void* scan_period; void* scan_count; void* vdev_id; } ;
struct wmi_vdev_spectral_conf_arg {int scan_chn_mask; int scan_dbm_adj; int scan_bin_scale; int scan_rpt_mode; int scan_pwr_format; int scan_rssi_thr; int scan_rssi_rpt_mode; int scan_wb_rpt_mode; int scan_str_bin_thr; int scan_nb_tone_thr; int scan_init_delay; int scan_noise_floor_ref; int scan_restart_ena; int scan_gc_ena; int scan_fft_size; int scan_priority; int scan_period; int scan_count; int vdev_id; } ;
struct wmi_tlv {scalar_t__ value; void* len; void* tag; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;


 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 int WMI_TLV_TAG_STRUCT_VDEV_SPECTRAL_CONFIGURE_CMD ;
 void* __cpu_to_le16 (int) ;
 void* __cpu_to_le32 (int ) ;
 struct sk_buff* ath10k_wmi_alloc_skb (struct ath10k*,size_t) ;

__attribute__((used)) static struct sk_buff *
ath10k_wmi_tlv_op_gen_vdev_spectral_conf(struct ath10k *ar,
      const struct wmi_vdev_spectral_conf_arg *arg)
{
 struct wmi_vdev_spectral_conf_cmd *cmd;
 struct sk_buff *skb;
 struct wmi_tlv *tlv;
 void *ptr;
 size_t len;

 len = sizeof(*tlv) + sizeof(*cmd);
 skb = ath10k_wmi_alloc_skb(ar, len);
 if (!skb)
  return ERR_PTR(-ENOMEM);

 ptr = (void *)skb->data;
 tlv = ptr;
 tlv->tag = __cpu_to_le16(WMI_TLV_TAG_STRUCT_VDEV_SPECTRAL_CONFIGURE_CMD);
 tlv->len = __cpu_to_le16(sizeof(*cmd));
 cmd = (void *)tlv->value;
 cmd->vdev_id = __cpu_to_le32(arg->vdev_id);
 cmd->scan_count = __cpu_to_le32(arg->scan_count);
 cmd->scan_period = __cpu_to_le32(arg->scan_period);
 cmd->scan_priority = __cpu_to_le32(arg->scan_priority);
 cmd->scan_fft_size = __cpu_to_le32(arg->scan_fft_size);
 cmd->scan_gc_ena = __cpu_to_le32(arg->scan_gc_ena);
 cmd->scan_restart_ena = __cpu_to_le32(arg->scan_restart_ena);
 cmd->scan_noise_floor_ref = __cpu_to_le32(arg->scan_noise_floor_ref);
 cmd->scan_init_delay = __cpu_to_le32(arg->scan_init_delay);
 cmd->scan_nb_tone_thr = __cpu_to_le32(arg->scan_nb_tone_thr);
 cmd->scan_str_bin_thr = __cpu_to_le32(arg->scan_str_bin_thr);
 cmd->scan_wb_rpt_mode = __cpu_to_le32(arg->scan_wb_rpt_mode);
 cmd->scan_rssi_rpt_mode = __cpu_to_le32(arg->scan_rssi_rpt_mode);
 cmd->scan_rssi_thr = __cpu_to_le32(arg->scan_rssi_thr);
 cmd->scan_pwr_format = __cpu_to_le32(arg->scan_pwr_format);
 cmd->scan_rpt_mode = __cpu_to_le32(arg->scan_rpt_mode);
 cmd->scan_bin_scale = __cpu_to_le32(arg->scan_bin_scale);
 cmd->scan_dbm_adj = __cpu_to_le32(arg->scan_dbm_adj);
 cmd->scan_chn_mask = __cpu_to_le32(arg->scan_chn_mask);

 return skb;
}
