
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_vif {int disconnect_worker; } ;
struct wil6210_priv {int wmi_wq; } ;
struct timer_list {int dummy; } ;


 int connect_timer ;
 struct wil6210_vif* from_timer (int ,struct timer_list*,int ) ;
 int queue_work (int ,int *) ;
 struct wil6210_vif* vif ;
 struct wil6210_priv* vif_to_wil (struct wil6210_vif*) ;
 int wil_dbg_wmi (struct wil6210_priv*,char*,int) ;
 int wil_err (struct wil6210_priv*,char*) ;

__attribute__((used)) static void wil_connect_timer_fn(struct timer_list *t)
{
 struct wil6210_vif *vif = from_timer(vif, t, connect_timer);
 struct wil6210_priv *wil = vif_to_wil(vif);
 bool q;

 wil_err(wil, "Connect timeout detected, disconnect station\n");





 q = queue_work(wil->wmi_wq, &vif->disconnect_worker);
 wil_dbg_wmi(wil, "queue_work of disconnect_worker -> %d\n", q);
}
