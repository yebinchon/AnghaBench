
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct vif_params {int dummy; } ;
struct usbnet {int dummy; } ;
struct TYPE_2__ {int iftype; } ;
struct rndis_wlan_private {TYPE_1__ wdev; struct usbnet* usbdev; } ;
struct net_device {int dummy; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 int EINVAL ;
 int NDIS_80211_INFRA_ADHOC ;
 int NDIS_80211_INFRA_INFRA ;


 int set_infra_mode (struct usbnet*,int) ;
 struct rndis_wlan_private* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int rndis_change_virtual_intf(struct wiphy *wiphy,
     struct net_device *dev,
     enum nl80211_iftype type,
     struct vif_params *params)
{
 struct rndis_wlan_private *priv = wiphy_priv(wiphy);
 struct usbnet *usbdev = priv->usbdev;
 int mode;

 switch (type) {
 case 129:
  mode = NDIS_80211_INFRA_ADHOC;
  break;
 case 128:
  mode = NDIS_80211_INFRA_INFRA;
  break;
 default:
  return -EINVAL;
 }

 priv->wdev.iftype = type;

 return set_infra_mode(usbdev, mode);
}
