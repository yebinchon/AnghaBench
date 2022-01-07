
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wiphy {int dummy; } ;
struct rndis_wlan_private {scalar_t__ last_cqm_event_rssi; int cqm_rssi_hyst; int cqm_rssi_thold; } ;
struct net_device {int dummy; } ;
typedef int s32 ;


 struct rndis_wlan_private* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int rndis_set_cqm_rssi_config(struct wiphy *wiphy,
     struct net_device *dev,
     s32 rssi_thold, u32 rssi_hyst)
{
 struct rndis_wlan_private *priv = wiphy_priv(wiphy);

 priv->cqm_rssi_thold = rssi_thold;
 priv->cqm_rssi_hyst = rssi_hyst;
 priv->last_cqm_event_rssi = 0;

 return 0;
}
