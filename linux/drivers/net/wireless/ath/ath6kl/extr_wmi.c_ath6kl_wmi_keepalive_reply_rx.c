
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi_get_keepalive_cmd {int dummy; } ;
struct wmi {int parent_dev; } ;


 int EINVAL ;
 int ath6kl_wakeup_event (int ) ;

__attribute__((used)) static int ath6kl_wmi_keepalive_reply_rx(struct wmi *wmi, u8 *datap, int len)
{
 if (len < sizeof(struct wmi_get_keepalive_cmd))
  return -EINVAL;

 ath6kl_wakeup_event(wmi->parent_dev);

 return 0;
}
