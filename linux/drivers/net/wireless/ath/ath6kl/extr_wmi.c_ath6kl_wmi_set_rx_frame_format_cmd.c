
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi_rx_frame_format_cmd {int dot11_hdr; int defrag_on_host; int meta_ver; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;


 int ENOMEM ;
 int NO_SYNC_WMIFLAG ;
 int WMI_RX_FRAME_FORMAT_CMDID ;
 int ath6kl_wmi_cmd_send (struct wmi*,int ,struct sk_buff*,int ,int ) ;
 struct sk_buff* ath6kl_wmi_get_new_buf (int) ;

int ath6kl_wmi_set_rx_frame_format_cmd(struct wmi *wmi, u8 if_idx,
           u8 rx_meta_ver,
           bool rx_dot11_hdr, bool defrag_on_host)
{
 struct sk_buff *skb;
 struct wmi_rx_frame_format_cmd *cmd;
 int ret;

 skb = ath6kl_wmi_get_new_buf(sizeof(*cmd));
 if (!skb)
  return -ENOMEM;

 cmd = (struct wmi_rx_frame_format_cmd *) skb->data;
 cmd->dot11_hdr = rx_dot11_hdr ? 1 : 0;
 cmd->defrag_on_host = defrag_on_host ? 1 : 0;
 cmd->meta_ver = rx_meta_ver;


 ret = ath6kl_wmi_cmd_send(wmi, if_idx, skb, WMI_RX_FRAME_FORMAT_CMDID,
      NO_SYNC_WMIFLAG);

 return ret;
}
