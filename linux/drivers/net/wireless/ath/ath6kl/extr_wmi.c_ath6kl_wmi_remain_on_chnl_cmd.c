
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wmi_remain_on_chnl_cmd {void* duration; void* freq; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;


 int ATH6KL_DBG_WMI ;
 int ENOMEM ;
 int NO_SYNC_WMIFLAG ;
 int WMI_REMAIN_ON_CHNL_CMDID ;
 int ath6kl_dbg (int ,char*,int ,int ) ;
 int ath6kl_wmi_cmd_send (struct wmi*,int ,struct sk_buff*,int ,int ) ;
 struct sk_buff* ath6kl_wmi_get_new_buf (int) ;
 void* cpu_to_le32 (int ) ;

int ath6kl_wmi_remain_on_chnl_cmd(struct wmi *wmi, u8 if_idx, u32 freq, u32 dur)
{
 struct sk_buff *skb;
 struct wmi_remain_on_chnl_cmd *p;

 skb = ath6kl_wmi_get_new_buf(sizeof(*p));
 if (!skb)
  return -ENOMEM;

 ath6kl_dbg(ATH6KL_DBG_WMI, "remain_on_chnl_cmd: freq=%u dur=%u\n",
     freq, dur);
 p = (struct wmi_remain_on_chnl_cmd *) skb->data;
 p->freq = cpu_to_le32(freq);
 p->duration = cpu_to_le32(dur);
 return ath6kl_wmi_cmd_send(wmi, if_idx, skb, WMI_REMAIN_ON_CHNL_CMDID,
       NO_SYNC_WMIFLAG);
}
