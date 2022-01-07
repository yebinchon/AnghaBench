
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_priv {struct net_device* main_ndev; } ;
struct net_device {int dummy; } ;


 int free_netdev (struct net_device*) ;
 int wil_cfg80211_deinit (struct wil6210_priv*) ;
 int wil_dbg_misc (struct wil6210_priv*,char*) ;
 int wil_ndev_destructor (struct net_device*) ;
 int wil_priv_deinit (struct wil6210_priv*) ;

void wil_if_free(struct wil6210_priv *wil)
{
 struct net_device *ndev = wil->main_ndev;

 wil_dbg_misc(wil, "if_free\n");

 if (!ndev)
  return;

 wil_priv_deinit(wil);

 wil->main_ndev = ((void*)0);
 wil_ndev_destructor(ndev);
 free_netdev(ndev);

 wil_cfg80211_deinit(wil);
}
