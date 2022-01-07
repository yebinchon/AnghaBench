
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi_disconnect_event {int proto_reason_status; int assoc_info; int assoc_resp_len; int bssid; int disconn_reason; } ;
struct wmi {int traffic_class; int is_wmm_enabled; } ;
struct ath6kl_vif {int dummy; } ;


 int ATH6KL_DBG_WMI ;
 int EINVAL ;
 int ath6kl_dbg (int ,char*,int ,int ,int ,int ) ;
 int ath6kl_disconnect_event (struct ath6kl_vif*,int ,int ,int ,int ,int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int ath6kl_wmi_disconnect_event_rx(struct wmi *wmi, u8 *datap, int len,
       struct ath6kl_vif *vif)
{
 struct wmi_disconnect_event *ev;
 wmi->traffic_class = 100;

 if (len < sizeof(struct wmi_disconnect_event))
  return -EINVAL;

 ev = (struct wmi_disconnect_event *) datap;

 ath6kl_dbg(ATH6KL_DBG_WMI,
     "wmi event disconnect proto_reason %d bssid %pM wmi_reason %d assoc_resp_len %d\n",
     le16_to_cpu(ev->proto_reason_status), ev->bssid,
     ev->disconn_reason, ev->assoc_resp_len);

 wmi->is_wmm_enabled = 0;

 ath6kl_disconnect_event(vif, ev->disconn_reason,
    ev->bssid, ev->assoc_resp_len, ev->assoc_info,
    le16_to_cpu(ev->proto_reason_status));

 return 0;
}
