
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int wiphy; } ;
struct wil6210_priv {int napi_rx; int napi_tx; struct net_device* main_ndev; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;


 int netif_napi_del (int *) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int wil_dbg_misc (struct wil6210_priv*,char*) ;
 int wil_vif_remove (struct wil6210_priv*,int ) ;
 int wiphy_unregister (int ) ;

void wil_if_remove(struct wil6210_priv *wil)
{
 struct net_device *ndev = wil->main_ndev;
 struct wireless_dev *wdev = ndev->ieee80211_ptr;

 wil_dbg_misc(wil, "if_remove\n");

 rtnl_lock();
 wil_vif_remove(wil, 0);
 rtnl_unlock();

 netif_napi_del(&wil->napi_tx);
 netif_napi_del(&wil->napi_rx);

 wiphy_unregister(wdev->wiphy);
}
