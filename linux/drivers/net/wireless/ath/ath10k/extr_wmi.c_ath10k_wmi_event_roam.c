
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wmi_roam_ev_arg {int rssi; int reason; int vdev_id; } ;
struct sk_buff {int dummy; } ;
struct ath10k {int dummy; } ;
typedef void* s32 ;


 int ATH10K_DBG_WMI ;




 int WMI_ROAM_REASON_MAX ;

 scalar_t__ WMI_SPECTRAL_NOISE_FLOOR_REF_DEFAULT ;
 void* __le32_to_cpu (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int,int,void*) ;
 int ath10k_mac_handle_beacon_miss (struct ath10k*,int) ;
 int ath10k_warn (struct ath10k*,char*,int,...) ;
 int ath10k_wmi_pull_roam_ev (struct ath10k*,struct sk_buff*,struct wmi_roam_ev_arg*) ;

void ath10k_wmi_event_roam(struct ath10k *ar, struct sk_buff *skb)
{
 struct wmi_roam_ev_arg arg = {};
 int ret;
 u32 vdev_id;
 u32 reason;
 s32 rssi;

 ret = ath10k_wmi_pull_roam_ev(ar, skb, &arg);
 if (ret) {
  ath10k_warn(ar, "failed to parse roam event: %d\n", ret);
  return;
 }

 vdev_id = __le32_to_cpu(arg.vdev_id);
 reason = __le32_to_cpu(arg.reason);
 rssi = __le32_to_cpu(arg.rssi);
 rssi += WMI_SPECTRAL_NOISE_FLOOR_REF_DEFAULT;

 ath10k_dbg(ar, ATH10K_DBG_WMI,
     "wmi roam event vdev %u reason 0x%08x rssi %d\n",
     vdev_id, reason, rssi);

 if (reason >= WMI_ROAM_REASON_MAX)
  ath10k_warn(ar, "ignoring unknown roam event reason %d on vdev %i\n",
       reason, vdev_id);

 switch (reason) {
 case 132:
  ath10k_mac_handle_beacon_miss(ar, vdev_id);
  break;
 case 131:
 case 129:
 case 128:
 case 130:
  ath10k_warn(ar, "ignoring not implemented roam event reason %d on vdev %i\n",
       reason, vdev_id);
  break;
 }
}
