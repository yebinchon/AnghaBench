
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_cmd_hdr {int dummy; } ;
struct wmi {scalar_t__ cmd_rsp_len; int cmd_wait; int * cmd_rsp_buf; } ;
struct sk_buff {int data; } ;


 int complete (int *) ;
 int memcpy (int *,int ,scalar_t__) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static void ath9k_wmi_rsp_callback(struct wmi *wmi, struct sk_buff *skb)
{
 skb_pull(skb, sizeof(struct wmi_cmd_hdr));

 if (wmi->cmd_rsp_buf != ((void*)0) && wmi->cmd_rsp_len != 0)
  memcpy(wmi->cmd_rsp_buf, skb->data, wmi->cmd_rsp_len);

 complete(&wmi->cmd_wait);
}
