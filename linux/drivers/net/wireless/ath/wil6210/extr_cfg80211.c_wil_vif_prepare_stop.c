
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {scalar_t__ iftype; } ;
struct wil6210_vif {int dummy; } ;
struct wil6210_priv {int dummy; } ;
struct net_device {int dummy; } ;


 scalar_t__ NL80211_IFTYPE_AP ;
 int netif_carrier_off (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 struct net_device* vif_to_ndev (struct wil6210_vif*) ;
 struct wireless_dev* vif_to_wdev (struct wil6210_vif*) ;
 struct wil6210_priv* vif_to_wil (struct wil6210_vif*) ;
 int wil_bcast_fini (struct wil6210_vif*) ;
 int wil_info (struct wil6210_priv*,char*,int) ;
 int wmi_pcp_stop (struct wil6210_vif*) ;

int wil_vif_prepare_stop(struct wil6210_vif *vif)
{
 struct wil6210_priv *wil = vif_to_wil(vif);
 struct wireless_dev *wdev = vif_to_wdev(vif);
 struct net_device *ndev;
 int rc;

 if (wdev->iftype != NL80211_IFTYPE_AP)
  return 0;

 ndev = vif_to_ndev(vif);
 if (netif_carrier_ok(ndev)) {
  rc = wmi_pcp_stop(vif);
  if (rc) {
   wil_info(wil, "failed to stop AP, status %d\n",
     rc);

  }
  wil_bcast_fini(vif);
  netif_carrier_off(ndev);
 }

 return 0;
}
