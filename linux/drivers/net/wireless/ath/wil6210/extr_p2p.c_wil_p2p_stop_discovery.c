
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct wil_p2p_info {scalar_t__ discovery_started; int discovery_timer; int * pending_listen_wdev; } ;
struct wil6210_vif {struct wil_p2p_info p2p; } ;


 int del_timer_sync (int *) ;
 int wmi_stop_discovery (struct wil6210_vif*) ;

u8 wil_p2p_stop_discovery(struct wil6210_vif *vif)
{
 struct wil_p2p_info *p2p = &vif->p2p;
 u8 started = p2p->discovery_started;

 if (p2p->discovery_started) {
  if (p2p->pending_listen_wdev) {

   p2p->pending_listen_wdev = ((void*)0);
  } else {
   del_timer_sync(&p2p->discovery_timer);
   wmi_stop_discovery(vif);
  }
  p2p->discovery_started = 0;
 }

 return started;
}
