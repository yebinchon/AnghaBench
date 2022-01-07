
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wmi_tx_status_event {int ack_status; int id; } ;
struct wmi {int last_mgmt_tx_frame_len; int * last_mgmt_tx_frame; } ;
struct ath6kl_vif {int wdev; } ;


 int ATH6KL_DBG_WMI ;
 int EINVAL ;
 int GFP_ATOMIC ;
 int ath6kl_dbg (int ,char*,int ,int ) ;
 int cfg80211_mgmt_tx_status (int *,int ,int *,int ,int,int ) ;
 int kfree (int *) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int ath6kl_wmi_tx_status_event_rx(struct wmi *wmi, u8 *datap, int len,
      struct ath6kl_vif *vif)
{
 struct wmi_tx_status_event *ev;
 u32 id;

 if (len < sizeof(*ev))
  return -EINVAL;

 ev = (struct wmi_tx_status_event *) datap;
 id = le32_to_cpu(ev->id);
 ath6kl_dbg(ATH6KL_DBG_WMI, "tx_status: id=%x ack_status=%u\n",
     id, ev->ack_status);
 if (wmi->last_mgmt_tx_frame) {
  cfg80211_mgmt_tx_status(&vif->wdev, id,
     wmi->last_mgmt_tx_frame,
     wmi->last_mgmt_tx_frame_len,
     !!ev->ack_status, GFP_ATOMIC);
  kfree(wmi->last_mgmt_tx_frame);
  wmi->last_mgmt_tx_frame = ((void*)0);
  wmi->last_mgmt_tx_frame_len = 0;
 }

 return 0;
}
