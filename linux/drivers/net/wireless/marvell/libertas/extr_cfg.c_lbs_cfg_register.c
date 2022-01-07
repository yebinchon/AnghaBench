
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {TYPE_1__* wiphy; } ;
struct lbs_private {int wiphy_registered; int scan_work; int dev; struct wireless_dev* wdev; } ;
struct TYPE_2__ {int max_scan_ssids; int interface_modes; int reg_notifier; int n_cipher_suites; int cipher_suites; int ** bands; int signal_type; } ;


 int ARRAY_SIZE (int ) ;
 int BIT (int ) ;
 int CFG80211_SIGNAL_TYPE_MBM ;
 int INIT_DELAYED_WORK (int *,int ) ;
 size_t NL80211_BAND_2GHZ ;
 int NL80211_IFTYPE_ADHOC ;
 int NL80211_IFTYPE_MESH_POINT ;
 int NL80211_IFTYPE_MONITOR ;
 int NL80211_IFTYPE_STATION ;
 int cipher_suites ;
 int lbs_band_2ghz ;
 int lbs_cfg_set_regulatory_hint (struct lbs_private*) ;
 scalar_t__ lbs_mesh_activated (struct lbs_private*) ;
 int lbs_reg_notifier ;
 scalar_t__ lbs_rtap_supported (struct lbs_private*) ;
 int lbs_scan_worker ;
 int pr_err (char*) ;
 int register_netdev (int ) ;
 int wiphy_register (TYPE_1__*) ;

int lbs_cfg_register(struct lbs_private *priv)
{
 struct wireless_dev *wdev = priv->wdev;
 int ret;

 wdev->wiphy->max_scan_ssids = 1;
 wdev->wiphy->signal_type = CFG80211_SIGNAL_TYPE_MBM;

 wdev->wiphy->interface_modes =
   BIT(NL80211_IFTYPE_STATION) |
   BIT(NL80211_IFTYPE_ADHOC);
 if (lbs_rtap_supported(priv))
  wdev->wiphy->interface_modes |= BIT(NL80211_IFTYPE_MONITOR);
 if (lbs_mesh_activated(priv))
  wdev->wiphy->interface_modes |= BIT(NL80211_IFTYPE_MESH_POINT);

 wdev->wiphy->bands[NL80211_BAND_2GHZ] = &lbs_band_2ghz;





 wdev->wiphy->cipher_suites = cipher_suites;
 wdev->wiphy->n_cipher_suites = ARRAY_SIZE(cipher_suites);
 wdev->wiphy->reg_notifier = lbs_reg_notifier;

 ret = wiphy_register(wdev->wiphy);
 if (ret < 0)
  pr_err("cannot register wiphy device\n");

 priv->wiphy_registered = 1;

 ret = register_netdev(priv->dev);
 if (ret)
  pr_err("cannot register network device\n");

 INIT_DELAYED_WORK(&priv->scan_work, lbs_scan_worker);

 lbs_cfg_set_regulatory_hint(priv);

 return ret;
}
