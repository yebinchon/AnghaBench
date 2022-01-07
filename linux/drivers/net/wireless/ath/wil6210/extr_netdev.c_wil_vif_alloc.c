
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct wireless_dev {int iftype; struct net_device* netdev; int wiphy; } ;
struct wil6210_vif {struct wireless_dev wdev; scalar_t__ mid; struct wil6210_priv* wil; struct net_device* ndev; } ;
struct wil6210_priv {int wiphy; struct net_device* main_ndev; } ;
struct net_device {int needs_free_netdev; int hw_features; int features; struct wireless_dev* ieee80211_ptr; int * netdev_ops; int priv_destructor; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 int EINVAL ;
 int ENOMEM ;
 struct wil6210_vif* ERR_PTR (int ) ;
 int NETIF_F_GRO ;
 int NETIF_F_HW_CSUM ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_SG ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 int SET_NETDEV_DEV (struct net_device*,int ) ;
 scalar_t__ U8_MAX ;
 struct net_device* alloc_netdev (int,char const*,unsigned char,int ) ;
 int dev_err (int ,char*) ;
 struct wil6210_vif* ndev_to_vif (struct net_device*) ;
 int wil_dev_setup ;
 int wil_err (struct wil6210_priv*,char*) ;
 int wil_ndev_destructor ;
 int wil_netdev_ops ;
 int wil_set_ethtoolops (struct net_device*) ;
 int wil_to_dev (struct wil6210_priv*) ;
 scalar_t__ wil_vif_find_free_mid (struct wil6210_priv*) ;
 int wil_vif_init (struct wil6210_vif*) ;
 int wiphy_dev (int ) ;

struct wil6210_vif *
wil_vif_alloc(struct wil6210_priv *wil, const char *name,
       unsigned char name_assign_type, enum nl80211_iftype iftype)
{
 struct net_device *ndev;
 struct wireless_dev *wdev;
 struct wil6210_vif *vif;
 u8 mid;

 mid = wil_vif_find_free_mid(wil);
 if (mid == U8_MAX) {
  wil_err(wil, "no available virtual interface\n");
  return ERR_PTR(-EINVAL);
 }

 ndev = alloc_netdev(sizeof(*vif), name, name_assign_type,
       wil_dev_setup);
 if (!ndev) {
  dev_err(wil_to_dev(wil), "alloc_netdev failed\n");
  return ERR_PTR(-ENOMEM);
 }
 if (mid == 0) {
  wil->main_ndev = ndev;
 } else {
  ndev->priv_destructor = wil_ndev_destructor;
  ndev->needs_free_netdev = 1;
 }

 vif = ndev_to_vif(ndev);
 vif->ndev = ndev;
 vif->wil = wil;
 vif->mid = mid;
 wil_vif_init(vif);

 wdev = &vif->wdev;
 wdev->wiphy = wil->wiphy;
 wdev->iftype = iftype;

 ndev->netdev_ops = &wil_netdev_ops;
 wil_set_ethtoolops(ndev);
 ndev->ieee80211_ptr = wdev;
 ndev->hw_features = NETIF_F_HW_CSUM | NETIF_F_RXCSUM |
       NETIF_F_SG | NETIF_F_GRO |
       NETIF_F_TSO | NETIF_F_TSO6;

 ndev->features |= ndev->hw_features;
 SET_NETDEV_DEV(ndev, wiphy_dev(wdev->wiphy));
 wdev->netdev = ndev;
 return vif;
}
