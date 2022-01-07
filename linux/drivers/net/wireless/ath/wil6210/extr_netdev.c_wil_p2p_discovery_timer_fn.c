
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int discovery_expired_work; } ;
struct wil6210_vif {TYPE_1__ p2p; } ;
struct wil6210_priv {int dummy; } ;
struct timer_list {int dummy; } ;
struct TYPE_4__ {int discovery_timer; } ;


 struct wil6210_vif* from_timer (int ,struct timer_list*,int ) ;
 TYPE_2__ p2p ;
 int schedule_work (int *) ;
 struct wil6210_vif* vif ;
 struct wil6210_priv* vif_to_wil (struct wil6210_vif*) ;
 int wil_dbg_misc (struct wil6210_priv*,char*) ;

__attribute__((used)) static void wil_p2p_discovery_timer_fn(struct timer_list *t)
{
 struct wil6210_vif *vif = from_timer(vif, t, p2p.discovery_timer);
 struct wil6210_priv *wil = vif_to_wil(vif);

 wil_dbg_misc(wil, "p2p_discovery_timer_fn\n");

 schedule_work(&vif->p2p.discovery_expired_work);
}
