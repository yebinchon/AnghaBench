
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi_tkip_micerr_event {int is_mcast; int key_id; } ;
struct wmi {int dummy; } ;
struct ath6kl_vif {int dummy; } ;


 int EINVAL ;
 int ath6kl_tkip_micerr_event (struct ath6kl_vif*,int ,int ) ;

__attribute__((used)) static int ath6kl_wmi_tkip_micerr_event_rx(struct wmi *wmi, u8 *datap, int len,
        struct ath6kl_vif *vif)
{
 struct wmi_tkip_micerr_event *ev;

 if (len < sizeof(struct wmi_tkip_micerr_event))
  return -EINVAL;

 ev = (struct wmi_tkip_micerr_event *) datap;

 ath6kl_tkip_micerr_event(vif, ev->key_id, ev->is_mcast);

 return 0;
}
