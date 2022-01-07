
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct wil6210_priv {int p2p_dev_started; } ;


 int wil_dbg_misc (struct wil6210_priv*,char*) ;
 struct wil6210_priv* wiphy_to_wil (struct wiphy*) ;

__attribute__((used)) static int wil_cfg80211_start_p2p_device(struct wiphy *wiphy,
      struct wireless_dev *wdev)
{
 struct wil6210_priv *wil = wiphy_to_wil(wiphy);

 wil_dbg_misc(wil, "start_p2p_device: entered\n");
 wil->p2p_dev_started = 1;
 return 0;
}
