
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virt_wifi_netdev_priv {int connect_requested_bss; int upperdev; int connect; } ;
struct net_device {int dummy; } ;


 int GFP_KERNEL ;
 int WLAN_STATUS_UNSPECIFIED_FAILURE ;
 scalar_t__ cancel_delayed_work_sync (int *) ;
 int cfg80211_connect_result (int ,int ,int *,int ,int *,int ,int ,int ) ;
 struct virt_wifi_netdev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void virt_wifi_cancel_connect(struct net_device *netdev)
{
 struct virt_wifi_netdev_priv *priv = netdev_priv(netdev);


 if (cancel_delayed_work_sync(&priv->connect)) {

  cfg80211_connect_result(priv->upperdev,
     priv->connect_requested_bss, ((void*)0), 0,
     ((void*)0), 0,
     WLAN_STATUS_UNSPECIFIED_FAILURE,
     GFP_KERNEL);
 }
}
