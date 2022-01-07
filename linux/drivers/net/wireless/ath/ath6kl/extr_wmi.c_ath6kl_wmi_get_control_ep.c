
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi {int ep_id; } ;
typedef enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;



enum htc_endpoint_id ath6kl_wmi_get_control_ep(struct wmi *wmi)
{
 return wmi->ep_id;
}
