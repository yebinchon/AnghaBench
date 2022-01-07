
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi_pspoll_event {int aid; } ;
struct wmi {int dummy; } ;
struct ath6kl_vif {int dummy; } ;


 int EINVAL ;
 int ath6kl_pspoll_event (struct ath6kl_vif*,int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int ath6kl_wmi_pspoll_event_rx(struct wmi *wmi, u8 *datap, int len,
          struct ath6kl_vif *vif)
{
 struct wmi_pspoll_event *ev;

 if (len < sizeof(struct wmi_pspoll_event))
  return -EINVAL;

 ev = (struct wmi_pspoll_event *) datap;

 ath6kl_pspoll_event(vif, le16_to_cpu(ev->aid));

 return 0;
}
