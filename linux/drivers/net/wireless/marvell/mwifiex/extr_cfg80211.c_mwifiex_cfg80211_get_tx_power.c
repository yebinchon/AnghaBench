
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct mwifiex_private {int tx_power_level; } ;
struct mwifiex_adapter {int dummy; } ;


 int HostCmd_ACT_GEN_GET ;
 int HostCmd_CMD_RF_TX_PWR ;
 int MWIFIEX_BSS_ROLE_ANY ;
 struct mwifiex_adapter* mwifiex_cfg80211_get_adapter (struct wiphy*) ;
 struct mwifiex_private* mwifiex_get_priv (struct mwifiex_adapter*,int ) ;
 int mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,int *,int) ;

__attribute__((used)) static int
mwifiex_cfg80211_get_tx_power(struct wiphy *wiphy,
         struct wireless_dev *wdev,
         int *dbm)
{
 struct mwifiex_adapter *adapter = mwifiex_cfg80211_get_adapter(wiphy);
 struct mwifiex_private *priv = mwifiex_get_priv(adapter,
       MWIFIEX_BSS_ROLE_ANY);
 int ret = mwifiex_send_cmd(priv, HostCmd_CMD_RF_TX_PWR,
       HostCmd_ACT_GEN_GET, 0, ((void*)0), 1);

 if (ret < 0)
  return ret;


 *dbm = priv->tx_power_level;

 return 0;
}
