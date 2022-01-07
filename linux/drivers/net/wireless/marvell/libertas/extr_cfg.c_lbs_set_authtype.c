
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lbs_private {int dummy; } ;
struct TYPE_2__ {int size; } ;
struct cmd_ds_802_11_authenticate {int authtype; int bssid; TYPE_1__ hdr; } ;
struct cfg80211_connect_params {int auth_type; int bssid; } ;
typedef int cmd ;


 int CMD_802_11_AUTHENTICATE ;
 int ETH_ALEN ;
 int cpu_to_le16 (int) ;
 int lbs_auth_to_authtype (int ) ;
 int lbs_cmd_with_response (struct lbs_private*,int ,struct cmd_ds_802_11_authenticate*) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct cmd_ds_802_11_authenticate*,int ,int) ;

__attribute__((used)) static int lbs_set_authtype(struct lbs_private *priv,
       struct cfg80211_connect_params *sme)
{
 struct cmd_ds_802_11_authenticate cmd;
 int ret;
 memset(&cmd, 0, sizeof(cmd));
 cmd.hdr.size = cpu_to_le16(sizeof(cmd));
 if (sme->bssid)
  memcpy(cmd.bssid, sme->bssid, ETH_ALEN);

 ret = lbs_auth_to_authtype(sme->auth_type);
 if (ret < 0)
  goto done;

 cmd.authtype = ret;
 ret = lbs_cmd_with_response(priv, CMD_802_11_AUTHENTICATE, &cmd);

 done:
 return ret;
}
