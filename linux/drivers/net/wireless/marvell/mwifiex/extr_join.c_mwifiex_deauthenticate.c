
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mwifiex_private {int bss_mode; int netdev; int media_connected; } ;


 int GFP_KERNEL ;
 int HostCmd_ACT_GEN_SET ;
 int HostCmd_CMD_802_11_AD_HOC_STOP ;
 int HostCmd_CMD_UAP_BSS_STOP ;




 int cfg80211_disconnected (int ,int ,int *,int ,int,int ) ;
 int mwifiex_deauthenticate_infra (struct mwifiex_private*,int *) ;
 int mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,int *,int) ;

int mwifiex_deauthenticate(struct mwifiex_private *priv, u8 *mac)
{
 int ret = 0;

 if (!priv->media_connected)
  return 0;

 switch (priv->bss_mode) {
 case 128:
 case 129:
  ret = mwifiex_deauthenticate_infra(priv, mac);
  if (ret)
   cfg80211_disconnected(priv->netdev, 0, ((void*)0), 0,
           1, GFP_KERNEL);
  break;
 case 131:
  return mwifiex_send_cmd(priv, HostCmd_CMD_802_11_AD_HOC_STOP,
     HostCmd_ACT_GEN_SET, 0, ((void*)0), 1);
 case 130:
  return mwifiex_send_cmd(priv, HostCmd_CMD_UAP_BSS_STOP,
     HostCmd_ACT_GEN_SET, 0, ((void*)0), 1);
 default:
  break;
 }

 return ret;
}
