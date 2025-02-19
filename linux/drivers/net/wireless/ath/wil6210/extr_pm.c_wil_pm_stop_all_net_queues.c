
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_vif {int dummy; } ;
struct wil6210_priv {int vif_mutex; struct wil6210_vif** vifs; } ;


 int GET_MAX_VIFS (struct wil6210_priv*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wil_update_net_queues_bh (struct wil6210_priv*,struct wil6210_vif*,int *,int) ;

__attribute__((used)) static void wil_pm_stop_all_net_queues(struct wil6210_priv *wil)
{
 int i;

 mutex_lock(&wil->vif_mutex);
 for (i = 0; i < GET_MAX_VIFS(wil); i++) {
  struct wil6210_vif *vif = wil->vifs[i];

  if (vif)
   wil_update_net_queues_bh(wil, vif, ((void*)0), 1);
 }
 mutex_unlock(&wil->vif_mutex);
}
