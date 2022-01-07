
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct mwifiex_private {int adapter; int netdev; int bss_cfg; scalar_t__ ap_11n_enabled; } ;


 int ERROR ;
 int HOST_CMD_APCMD_SYS_RESET ;
 int HostCmd_ACT_GEN_SET ;
 int HostCmd_CMD_UAP_BSS_STOP ;
 int memset (int *,int ,int) ;
 int mwifiex_abort_cac (struct mwifiex_private*) ;
 int mwifiex_dbg (int ,int ,char*) ;
 scalar_t__ mwifiex_del_mgmt_ies (struct mwifiex_private*) ;
 struct mwifiex_private* mwifiex_netdev_get_priv (struct net_device*) ;
 scalar_t__ mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,int *,int) ;
 int mwifiex_stop_net_dev_queue (int ,int ) ;
 int netif_carrier_off (int ) ;
 scalar_t__ netif_carrier_ok (int ) ;

__attribute__((used)) static int mwifiex_cfg80211_stop_ap(struct wiphy *wiphy, struct net_device *dev)
{
 struct mwifiex_private *priv = mwifiex_netdev_get_priv(dev);

 mwifiex_abort_cac(priv);

 if (mwifiex_del_mgmt_ies(priv))
  mwifiex_dbg(priv->adapter, ERROR,
       "Failed to delete mgmt IEs!\n");

 priv->ap_11n_enabled = 0;
 memset(&priv->bss_cfg, 0, sizeof(priv->bss_cfg));

 if (mwifiex_send_cmd(priv, HostCmd_CMD_UAP_BSS_STOP,
        HostCmd_ACT_GEN_SET, 0, ((void*)0), 1)) {
  mwifiex_dbg(priv->adapter, ERROR,
       "Failed to stop the BSS\n");
  return -1;
 }

 if (mwifiex_send_cmd(priv, HOST_CMD_APCMD_SYS_RESET,
        HostCmd_ACT_GEN_SET, 0, ((void*)0), 1)) {
  mwifiex_dbg(priv->adapter, ERROR,
       "Failed to reset BSS\n");
  return -1;
 }

 if (netif_carrier_ok(priv->netdev))
  netif_carrier_off(priv->netdev);
 mwifiex_stop_net_dev_queue(priv->netdev, priv->adapter);

 return 0;
}
