
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct wil6210_vif {scalar_t__ mid; int enable_tx_key_worker; int probe_client_worker; int disconnect_worker; int connect_timer; } ;
struct wil6210_priv {int wmi_event_worker; int vif_mutex; int napi_tx; int napi_rx; int status; struct wil6210_vif** vifs; int mutex; } ;
struct net_device {int dummy; } ;


 int ASSERT_RTNL () ;
 size_t GET_MAX_VIFS (struct wil6210_priv*) ;
 int WLAN_REASON_DEAUTH_LEAVING ;
 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int flush_work (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int napi_synchronize (int *) ;
 scalar_t__ test_bit (int ,int ) ;
 int unregister_netdevice (struct net_device*) ;
 struct net_device* vif_to_ndev (struct wil6210_vif*) ;
 int wil6210_disconnect (struct wil6210_vif*,int *,int ) ;
 int wil_err (struct wil6210_priv*,char*,size_t) ;
 int wil_has_active_ifaces (struct wil6210_priv*,int,int) ;
 int wil_probe_client_flush (struct wil6210_vif*) ;
 int wil_status_napi_en ;
 int wmb () ;
 int wmi_port_delete (struct wil6210_priv*,scalar_t__) ;

void wil_vif_remove(struct wil6210_priv *wil, u8 mid)
{
 struct wil6210_vif *vif;
 struct net_device *ndev;
 bool any_active = wil_has_active_ifaces(wil, 1, 0);

 ASSERT_RTNL();
 if (mid >= GET_MAX_VIFS(wil)) {
  wil_err(wil, "invalid MID: %d\n", mid);
  return;
 }

 vif = wil->vifs[mid];
 if (!vif) {
  wil_err(wil, "MID %d not registered\n", mid);
  return;
 }

 mutex_lock(&wil->mutex);
 wil6210_disconnect(vif, ((void*)0), WLAN_REASON_DEAUTH_LEAVING);
 mutex_unlock(&wil->mutex);

 ndev = vif_to_ndev(vif);



 unregister_netdevice(ndev);

 if (any_active && vif->mid != 0)
  wmi_port_delete(wil, vif->mid);


 mutex_lock(&wil->vif_mutex);
 wil->vifs[mid] = ((void*)0);

 wmb();
 if (test_bit(wil_status_napi_en, wil->status)) {
  napi_synchronize(&wil->napi_rx);
  napi_synchronize(&wil->napi_tx);
 }
 mutex_unlock(&wil->vif_mutex);

 flush_work(&wil->wmi_event_worker);
 del_timer_sync(&vif->connect_timer);
 cancel_work_sync(&vif->disconnect_worker);
 wil_probe_client_flush(vif);
 cancel_work_sync(&vif->probe_client_worker);
 cancel_work_sync(&vif->enable_tx_key_worker);




}
