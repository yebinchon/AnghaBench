
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_set_regdomain_cmd {int iso_name; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;


 int ENOMEM ;
 int NO_SYNC_WMIFLAG ;
 int WMI_SET_REGDOMAIN_CMDID ;
 int ath6kl_wmi_cmd_send (struct wmi*,int ,struct sk_buff*,int ,int ) ;
 struct sk_buff* ath6kl_wmi_get_new_buf (int) ;
 int memcpy (int ,char const*,int) ;

int ath6kl_wmi_set_regdomain_cmd(struct wmi *wmi, const char *alpha2)
{
 struct sk_buff *skb;
 struct wmi_set_regdomain_cmd *cmd;

 skb = ath6kl_wmi_get_new_buf(sizeof(*cmd));
 if (!skb)
  return -ENOMEM;

 cmd = (struct wmi_set_regdomain_cmd *) skb->data;
 memcpy(cmd->iso_name, alpha2, 2);

 return ath6kl_wmi_cmd_send(wmi, 0, skb,
       WMI_SET_REGDOMAIN_CMDID,
       NO_SYNC_WMIFLAG);
}
