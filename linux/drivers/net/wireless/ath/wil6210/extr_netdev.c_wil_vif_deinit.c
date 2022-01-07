
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int delayed_listen_work; int discovery_expired_work; int discovery_timer; } ;
struct wil6210_vif {int enable_tx_key_worker; int probe_client_worker; TYPE_1__ p2p; int disconnect_worker; int scan_timer; } ;


 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int wil_probe_client_flush (struct wil6210_vif*) ;

__attribute__((used)) static void wil_vif_deinit(struct wil6210_vif *vif)
{
 del_timer_sync(&vif->scan_timer);
 del_timer_sync(&vif->p2p.discovery_timer);
 cancel_work_sync(&vif->disconnect_worker);
 cancel_work_sync(&vif->p2p.discovery_expired_work);
 cancel_work_sync(&vif->p2p.delayed_listen_work);
 wil_probe_client_flush(vif);
 cancel_work_sync(&vif->probe_client_worker);
 cancel_work_sync(&vif->enable_tx_key_worker);
}
