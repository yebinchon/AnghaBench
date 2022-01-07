
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi_scan_complete_event {int status; } ;
struct wmi {int is_probe_ssid; } ;
struct ath6kl_vif {int dummy; } ;


 int a_sle32_to_cpu (int ) ;
 int ath6kl_scan_complete_evt (struct ath6kl_vif*,int ) ;

__attribute__((used)) static int ath6kl_wmi_scan_complete_rx(struct wmi *wmi, u8 *datap, int len,
           struct ath6kl_vif *vif)
{
 struct wmi_scan_complete_event *ev;

 ev = (struct wmi_scan_complete_event *) datap;

 ath6kl_scan_complete_evt(vif, a_sle32_to_cpu(ev->status));
 wmi->is_probe_ssid = 0;

 return 0;
}
