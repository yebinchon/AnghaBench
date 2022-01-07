
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi_set_ip_cmd {void** ips; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
typedef void* __be32 ;


 int EINVAL ;
 int ENOMEM ;
 int NO_SYNC_WMIFLAG ;
 int WMI_SET_IP_CMDID ;
 int ath6kl_wmi_cmd_send (struct wmi*,int ,struct sk_buff*,int ,int ) ;
 struct sk_buff* ath6kl_wmi_get_new_buf (int) ;
 scalar_t__ ipv4_is_multicast (void*) ;

int ath6kl_wmi_set_ip_cmd(struct wmi *wmi, u8 if_idx,
     __be32 ips0, __be32 ips1)
{
 struct sk_buff *skb;
 struct wmi_set_ip_cmd *cmd;
 int ret;


 if (ipv4_is_multicast(ips0) ||
     ipv4_is_multicast(ips1))
  return -EINVAL;

 skb = ath6kl_wmi_get_new_buf(sizeof(struct wmi_set_ip_cmd));
 if (!skb)
  return -ENOMEM;

 cmd = (struct wmi_set_ip_cmd *) skb->data;
 cmd->ips[0] = ips0;
 cmd->ips[1] = ips1;

 ret = ath6kl_wmi_cmd_send(wmi, if_idx, skb, WMI_SET_IP_CMDID,
      NO_SYNC_WMIFLAG);
 return ret;
}
