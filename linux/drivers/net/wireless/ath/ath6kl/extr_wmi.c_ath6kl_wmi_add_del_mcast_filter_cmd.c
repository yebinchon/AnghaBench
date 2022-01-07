
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi_mcast_filter_add_del_cmd {int mcast_mac; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;


 int ATH6KL_MCAST_FILTER_MAC_ADDR_SIZE ;
 int EINVAL ;
 int ENOMEM ;
 int NO_SYNC_WMIFLAG ;
 int WMI_DEL_MCAST_FILTER_CMDID ;
 int WMI_SET_MCAST_FILTER_CMDID ;
 int ath6kl_warn (char*) ;
 int ath6kl_wmi_cmd_send (struct wmi*,int,struct sk_buff*,int ,int ) ;
 struct sk_buff* ath6kl_wmi_get_new_buf (int) ;
 int memcpy (int ,int*,int ) ;

int ath6kl_wmi_add_del_mcast_filter_cmd(struct wmi *wmi, u8 if_idx,
     u8 *filter, bool add_filter)
{
 struct sk_buff *skb;
 struct wmi_mcast_filter_add_del_cmd *cmd;
 int ret;

 if ((filter[0] != 0x33 || filter[1] != 0x33) &&
     (filter[0] != 0x01 || filter[1] != 0x00 ||
     filter[2] != 0x5e || filter[3] > 0x7f)) {
  ath6kl_warn("invalid multicast filter address\n");
  return -EINVAL;
 }

 skb = ath6kl_wmi_get_new_buf(sizeof(*cmd));
 if (!skb)
  return -ENOMEM;

 cmd = (struct wmi_mcast_filter_add_del_cmd *) skb->data;
 memcpy(cmd->mcast_mac, filter, ATH6KL_MCAST_FILTER_MAC_ADDR_SIZE);
 ret = ath6kl_wmi_cmd_send(wmi, if_idx, skb,
      add_filter ? WMI_SET_MCAST_FILTER_CMDID :
      WMI_DEL_MCAST_FILTER_CMDID,
      NO_SYNC_WMIFLAG);

 return ret;
}
