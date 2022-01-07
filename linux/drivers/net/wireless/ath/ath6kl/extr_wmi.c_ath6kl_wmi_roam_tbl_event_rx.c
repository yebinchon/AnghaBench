
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi {int parent_dev; } ;


 int ath6kl_debug_roam_tbl_event (int ,int *,int) ;

__attribute__((used)) static int ath6kl_wmi_roam_tbl_event_rx(struct wmi *wmi, u8 *datap, int len)
{
 return ath6kl_debug_roam_tbl_event(wmi->parent_dev, datap, len);
}
