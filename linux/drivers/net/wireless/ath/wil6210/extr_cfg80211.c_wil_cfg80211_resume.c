
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct wil6210_priv {int dummy; } ;


 int wil_dbg_pm (struct wil6210_priv*,char*) ;
 struct wil6210_priv* wiphy_to_wil (struct wiphy*) ;

__attribute__((used)) static int wil_cfg80211_resume(struct wiphy *wiphy)
{
 struct wil6210_priv *wil = wiphy_to_wil(wiphy);

 wil_dbg_pm(wil, "resuming\n");

 return 0;
}
