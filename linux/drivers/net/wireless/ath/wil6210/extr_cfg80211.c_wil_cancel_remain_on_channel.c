
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct wil6210_vif {int dummy; } ;
struct wil6210_priv {int dummy; } ;


 struct wil6210_vif* wdev_to_vif (struct wil6210_priv*,struct wireless_dev*) ;
 int wil_dbg_misc (struct wil6210_priv*,char*) ;
 int wil_p2p_cancel_listen (struct wil6210_vif*,int ) ;
 struct wil6210_priv* wiphy_to_wil (struct wiphy*) ;

__attribute__((used)) static int wil_cancel_remain_on_channel(struct wiphy *wiphy,
     struct wireless_dev *wdev,
     u64 cookie)
{
 struct wil6210_priv *wil = wiphy_to_wil(wiphy);
 struct wil6210_vif *vif = wdev_to_vif(wil, wdev);

 wil_dbg_misc(wil, "cancel_remain_on_channel\n");

 return wil_p2p_cancel_listen(vif, cookie);
}
