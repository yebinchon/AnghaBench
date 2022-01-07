
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wmix_hb_challenge_resp_cmd {void* source; void* cookie; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;


 int ENOMEM ;
 int NO_SYNC_WMIFLAG ;
 int WMIX_HB_CHALLENGE_RESP_CMDID ;
 int ath6kl_wmi_cmd_send_xtnd (struct wmi*,struct sk_buff*,int ,int ) ;
 struct sk_buff* ath6kl_wmi_get_new_buf (int) ;
 void* cpu_to_le32 (int ) ;

int ath6kl_wmi_get_challenge_resp_cmd(struct wmi *wmi, u32 cookie, u32 source)
{
 struct sk_buff *skb;
 struct wmix_hb_challenge_resp_cmd *cmd;
 int ret;

 skb = ath6kl_wmi_get_new_buf(sizeof(*cmd));
 if (!skb)
  return -ENOMEM;

 cmd = (struct wmix_hb_challenge_resp_cmd *) skb->data;
 cmd->cookie = cpu_to_le32(cookie);
 cmd->source = cpu_to_le32(source);

 ret = ath6kl_wmi_cmd_send_xtnd(wmi, skb, WMIX_HB_CHALLENGE_RESP_CMDID,
           NO_SYNC_WMIFLAG);
 return ret;
}
