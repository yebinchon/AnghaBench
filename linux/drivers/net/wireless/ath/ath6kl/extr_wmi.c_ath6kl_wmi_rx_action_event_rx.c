
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct wmi_rx_action_event {int * data; int len; int freq; } ;
struct wmi {int dummy; } ;
struct ath6kl_vif {int wdev; } ;


 int ATH6KL_DBG_WMI ;
 int EINVAL ;
 int ath6kl_dbg (int ,char*,int,int ) ;
 int ath6kl_err (char*,int,int) ;
 int cfg80211_rx_mgmt (int *,int ,int ,int *,int,int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int ath6kl_wmi_rx_action_event_rx(struct wmi *wmi, u8 *datap, int len,
      struct ath6kl_vif *vif)
{
 struct wmi_rx_action_event *ev;
 u32 freq;
 u16 dlen;

 if (len < sizeof(*ev))
  return -EINVAL;

 ev = (struct wmi_rx_action_event *) datap;
 freq = le32_to_cpu(ev->freq);
 dlen = le16_to_cpu(ev->len);
 if (datap + len < ev->data + dlen) {
  ath6kl_err("invalid wmi_rx_action_event: len=%d dlen=%u\n",
      len, dlen);
  return -EINVAL;
 }
 ath6kl_dbg(ATH6KL_DBG_WMI, "rx_action: len=%u freq=%u\n", dlen, freq);
 cfg80211_rx_mgmt(&vif->wdev, freq, 0, ev->data, dlen, 0);

 return 0;
}
