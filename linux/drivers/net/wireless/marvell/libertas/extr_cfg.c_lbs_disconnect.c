
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct lbs_private {int connect_status; int dev; int assoc_bss; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_802_11_deauthenticate {void* reasoncode; int macaddr; TYPE_1__ hdr; } ;
typedef int cmd ;


 int CMD_802_11_DEAUTHENTICATE ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int LBS_DISCONNECTED ;
 int cfg80211_disconnected (int ,int,int *,int ,int,int ) ;
 void* cpu_to_le16 (int) ;
 int lbs_cmd_with_response (struct lbs_private*,int ,struct cmd_ds_802_11_deauthenticate*) ;
 int memcpy (int ,int *,int ) ;
 int memset (struct cmd_ds_802_11_deauthenticate*,int ,int) ;

int lbs_disconnect(struct lbs_private *priv, u16 reason)
{
 struct cmd_ds_802_11_deauthenticate cmd;
 int ret;

 memset(&cmd, 0, sizeof(cmd));
 cmd.hdr.size = cpu_to_le16(sizeof(cmd));

 memcpy(cmd.macaddr, &priv->assoc_bss, ETH_ALEN);
 cmd.reasoncode = cpu_to_le16(reason);

 ret = lbs_cmd_with_response(priv, CMD_802_11_DEAUTHENTICATE, &cmd);
 if (ret)
  return ret;

 cfg80211_disconnected(priv->dev,
   reason,
   ((void*)0), 0, 1,
   GFP_KERNEL);
 priv->connect_status = LBS_DISCONNECTED;

 return 0;
}
