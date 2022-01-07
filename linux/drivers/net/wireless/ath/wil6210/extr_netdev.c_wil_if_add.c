
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int fw_version; } ;
struct wil6210_vif {int dummy; } ;
struct wil6210_priv {int napi_tx; int napi_ndev; int napi_rx; scalar_t__ use_enhanced_dma_hw; int fw_version; struct net_device* main_ndev; struct wiphy* wiphy; } ;
struct net_device {int dummy; } ;


 int WIL6210_NAPI_BUDGET ;
 int init_dummy_netdev (int *) ;
 struct wil6210_vif* ndev_to_vif (struct net_device*) ;
 int netif_napi_add (int *,int *,int ,int ) ;
 int netif_tx_napi_add (int *,int *,int ,int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int strlcpy (int ,int ,int) ;
 int wil6210_netdev_poll_rx ;
 int wil6210_netdev_poll_rx_edma ;
 int wil6210_netdev_poll_tx ;
 int wil6210_netdev_poll_tx_edma ;
 int wil_dbg_misc (struct wil6210_priv*,char*) ;
 int wil_err (struct wil6210_priv*,char*,int) ;
 int wil_update_net_queues_bh (struct wil6210_priv*,struct wil6210_vif*,int *,int) ;
 int wil_vif_add (struct wil6210_priv*,struct wil6210_vif*) ;
 int wiphy_register (struct wiphy*) ;
 int wiphy_unregister (struct wiphy*) ;

int wil_if_add(struct wil6210_priv *wil)
{
 struct wiphy *wiphy = wil->wiphy;
 struct net_device *ndev = wil->main_ndev;
 struct wil6210_vif *vif = ndev_to_vif(ndev);
 int rc;

 wil_dbg_misc(wil, "entered");

 strlcpy(wiphy->fw_version, wil->fw_version, sizeof(wiphy->fw_version));

 rc = wiphy_register(wiphy);
 if (rc < 0) {
  wil_err(wil, "failed to register wiphy, err %d\n", rc);
  return rc;
 }

 init_dummy_netdev(&wil->napi_ndev);
 if (wil->use_enhanced_dma_hw) {
  netif_napi_add(&wil->napi_ndev, &wil->napi_rx,
          wil6210_netdev_poll_rx_edma,
          WIL6210_NAPI_BUDGET);
  netif_tx_napi_add(&wil->napi_ndev,
      &wil->napi_tx, wil6210_netdev_poll_tx_edma,
      WIL6210_NAPI_BUDGET);
 } else {
  netif_napi_add(&wil->napi_ndev, &wil->napi_rx,
          wil6210_netdev_poll_rx,
          WIL6210_NAPI_BUDGET);
  netif_tx_napi_add(&wil->napi_ndev,
      &wil->napi_tx, wil6210_netdev_poll_tx,
      WIL6210_NAPI_BUDGET);
 }

 wil_update_net_queues_bh(wil, vif, ((void*)0), 1);

 rtnl_lock();
 rc = wil_vif_add(wil, vif);
 rtnl_unlock();
 if (rc < 0)
  goto out_wiphy;

 return 0;

out_wiphy:
 wiphy_unregister(wiphy);
 return rc;
}
