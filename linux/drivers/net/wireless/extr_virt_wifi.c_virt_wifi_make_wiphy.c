
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int max_scan_ssids; int max_scan_ie_len; int interface_modes; int ** bands; int signal_type; } ;
struct virt_wifi_wiphy_priv {int being_deleted; int scan_result; int * scan_request; } ;


 int BIT (int ) ;
 int CFG80211_SIGNAL_TYPE_MBM ;
 int INIT_DELAYED_WORK (int *,int ) ;
 size_t NL80211_BAND_2GHZ ;
 size_t NL80211_BAND_5GHZ ;
 size_t NL80211_BAND_60GHZ ;
 int NL80211_IFTYPE_STATION ;
 int band_2ghz ;
 int band_5ghz ;
 int virt_wifi_cfg80211_ops ;
 int virt_wifi_scan_result ;
 int wiphy_free (struct wiphy*) ;
 struct wiphy* wiphy_new (int *,int) ;
 struct virt_wifi_wiphy_priv* wiphy_priv (struct wiphy*) ;
 int wiphy_register (struct wiphy*) ;

__attribute__((used)) static struct wiphy *virt_wifi_make_wiphy(void)
{
 struct wiphy *wiphy;
 struct virt_wifi_wiphy_priv *priv;
 int err;

 wiphy = wiphy_new(&virt_wifi_cfg80211_ops, sizeof(*priv));

 if (!wiphy)
  return ((void*)0);

 wiphy->max_scan_ssids = 4;
 wiphy->max_scan_ie_len = 1000;
 wiphy->signal_type = CFG80211_SIGNAL_TYPE_MBM;

 wiphy->bands[NL80211_BAND_2GHZ] = &band_2ghz;
 wiphy->bands[NL80211_BAND_5GHZ] = &band_5ghz;
 wiphy->bands[NL80211_BAND_60GHZ] = ((void*)0);

 wiphy->interface_modes = BIT(NL80211_IFTYPE_STATION);

 priv = wiphy_priv(wiphy);
 priv->being_deleted = 0;
 priv->scan_request = ((void*)0);
 INIT_DELAYED_WORK(&priv->scan_result, virt_wifi_scan_result);

 err = wiphy_register(wiphy);
 if (err < 0) {
  wiphy_free(wiphy);
  return ((void*)0);
 }

 return wiphy;
}
