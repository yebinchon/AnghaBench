
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_vif {int mid; } ;
struct wil6210_priv {struct wil6210_vif** vifs; } ;


 int GET_MAX_VIFS (struct wil6210_priv*) ;
 int wil_vif_prepare_stop (struct wil6210_vif*) ;
 int wil_vif_remove (struct wil6210_priv*,int ) ;

__attribute__((used)) static void wil_remove_all_additional_vifs(struct wil6210_priv *wil)
{
 struct wil6210_vif *vif;
 int i;

 for (i = 1; i < GET_MAX_VIFS(wil); i++) {
  vif = wil->vifs[i];
  if (vif) {
   wil_vif_prepare_stop(vif);
   wil_vif_remove(wil, vif->mid);
  }
 }
}
