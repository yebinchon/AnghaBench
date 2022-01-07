
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi_setpmkid_cmd {int enable; int pmkid; int bssid; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;


 int EINVAL ;
 int ENOMEM ;
 int ETH_ALEN ;
 int NO_SYNC_WMIFLAG ;
 int PMKID_DISABLE ;
 int PMKID_ENABLE ;
 int WMI_SET_PMKID_CMDID ;
 int ath6kl_wmi_cmd_send (struct wmi*,int ,struct sk_buff*,int ,int ) ;
 struct sk_buff* ath6kl_wmi_get_new_buf (int) ;
 int memcpy (int ,int const*,int) ;
 int memset (int ,int ,int) ;

int ath6kl_wmi_setpmkid_cmd(struct wmi *wmi, u8 if_idx, const u8 *bssid,
       const u8 *pmkid, bool set)
{
 struct sk_buff *skb;
 struct wmi_setpmkid_cmd *cmd;
 int ret;

 if (bssid == ((void*)0))
  return -EINVAL;

 if (set && pmkid == ((void*)0))
  return -EINVAL;

 skb = ath6kl_wmi_get_new_buf(sizeof(*cmd));
 if (!skb)
  return -ENOMEM;

 cmd = (struct wmi_setpmkid_cmd *) skb->data;
 memcpy(cmd->bssid, bssid, ETH_ALEN);
 if (set) {
  memcpy(cmd->pmkid, pmkid, sizeof(cmd->pmkid));
  cmd->enable = PMKID_ENABLE;
 } else {
  memset(cmd->pmkid, 0, sizeof(cmd->pmkid));
  cmd->enable = PMKID_DISABLE;
 }

 ret = ath6kl_wmi_cmd_send(wmi, if_idx, skb, WMI_SET_PMKID_CMDID,
      NO_SYNC_WMIFLAG);

 return ret;
}
