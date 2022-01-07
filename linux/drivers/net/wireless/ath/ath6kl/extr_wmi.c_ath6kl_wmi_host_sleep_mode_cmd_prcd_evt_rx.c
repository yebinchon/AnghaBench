
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi {struct ath6kl* parent_dev; } ;
struct ath6kl_vif {int flags; } ;
struct ath6kl {int event_wq; } ;


 int HOST_SLEEP_MODE_CMD_PROCESSED ;
 int set_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static int ath6kl_wmi_host_sleep_mode_cmd_prcd_evt_rx(struct wmi *wmi,
            struct ath6kl_vif *vif)
{
 struct ath6kl *ar = wmi->parent_dev;

 set_bit(HOST_SLEEP_MODE_CMD_PROCESSED, &vif->flags);
 wake_up(&ar->event_wq);

 return 0;
}
