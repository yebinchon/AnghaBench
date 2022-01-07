
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int dummy; } ;
struct wil6210_vif {scalar_t__ mid; } ;
struct wil6210_priv {struct wireless_dev* radio_wdev; } ;


 struct wireless_dev* vif_to_wdev (struct wil6210_vif*) ;

__attribute__((used)) static inline struct wireless_dev *
vif_to_radio_wdev(struct wil6210_priv *wil, struct wil6210_vif *vif)
{

 if (vif->mid)
  return vif_to_wdev(vif);
 else
  return wil->radio_wdev;
}
