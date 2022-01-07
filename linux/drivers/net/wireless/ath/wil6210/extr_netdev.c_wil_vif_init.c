
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int delayed_listen_work; int discovery_expired_work; int discovery_timer; } ;
struct wil6210_vif {int bcast_ring; int net_queue_stopped; int probe_client_pending; int enable_tx_key_worker; TYPE_1__ p2p; int disconnect_worker; int probe_client_worker; int scan_timer; int connect_timer; int probe_client_mutex; } ;


 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int mutex_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 int wil_connect_timer_fn ;
 int wil_disconnect_worker ;
 int wil_enable_tx_key_worker ;
 int wil_p2p_delayed_listen_work ;
 int wil_p2p_discovery_timer_fn ;
 int wil_p2p_listen_expired ;
 int wil_probe_client_worker ;
 int wil_scan_timer_fn ;

__attribute__((used)) static void wil_vif_init(struct wil6210_vif *vif)
{
 vif->bcast_ring = -1;

 mutex_init(&vif->probe_client_mutex);

 timer_setup(&vif->connect_timer, wil_connect_timer_fn, 0);
 timer_setup(&vif->scan_timer, wil_scan_timer_fn, 0);
 timer_setup(&vif->p2p.discovery_timer, wil_p2p_discovery_timer_fn, 0);

 INIT_WORK(&vif->probe_client_worker, wil_probe_client_worker);
 INIT_WORK(&vif->disconnect_worker, wil_disconnect_worker);
 INIT_WORK(&vif->p2p.discovery_expired_work, wil_p2p_listen_expired);
 INIT_WORK(&vif->p2p.delayed_listen_work, wil_p2p_delayed_listen_work);
 INIT_WORK(&vif->enable_tx_key_worker, wil_enable_tx_key_worker);

 INIT_LIST_HEAD(&vif->probe_client_pending);

 vif->net_queue_stopped = 1;
}
