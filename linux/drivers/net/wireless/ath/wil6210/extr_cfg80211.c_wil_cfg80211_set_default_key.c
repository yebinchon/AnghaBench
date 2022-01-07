
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wiphy {int dummy; } ;
struct wil6210_priv {int dummy; } ;
struct net_device {int dummy; } ;


 int wil_dbg_misc (struct wil6210_priv*,char*) ;
 struct wil6210_priv* wiphy_to_wil (struct wiphy*) ;

__attribute__((used)) static int wil_cfg80211_set_default_key(struct wiphy *wiphy,
     struct net_device *ndev,
     u8 key_index, bool unicast,
     bool multicast)
{
 struct wil6210_priv *wil = wiphy_to_wil(wiphy);

 wil_dbg_misc(wil, "set_default_key: entered\n");
 return 0;
}
