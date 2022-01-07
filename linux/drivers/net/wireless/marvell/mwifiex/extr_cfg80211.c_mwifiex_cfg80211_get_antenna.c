
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wiphy {int dummy; } ;
struct mwifiex_private {int rx_ant; int tx_ant; } ;
struct mwifiex_adapter {int dummy; } ;


 int HostCmd_ACT_GEN_GET ;
 int HostCmd_CMD_RF_ANTENNA ;
 int MWIFIEX_BSS_ROLE_ANY ;
 struct mwifiex_adapter* mwifiex_cfg80211_get_adapter (struct wiphy*) ;
 struct mwifiex_private* mwifiex_get_priv (struct mwifiex_adapter*,int ) ;
 int mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,int *,int) ;

__attribute__((used)) static int
mwifiex_cfg80211_get_antenna(struct wiphy *wiphy, u32 *tx_ant, u32 *rx_ant)
{
 struct mwifiex_adapter *adapter = mwifiex_cfg80211_get_adapter(wiphy);
 struct mwifiex_private *priv = mwifiex_get_priv(adapter,
       MWIFIEX_BSS_ROLE_ANY);
 mwifiex_send_cmd(priv, HostCmd_CMD_RF_ANTENNA,
    HostCmd_ACT_GEN_GET, 0, ((void*)0), 1);

 *tx_ant = priv->tx_ant;
 *rx_ant = priv->rx_ant;

 return 0;
}
