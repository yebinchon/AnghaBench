
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wmi_cmd_hdr {int cmd_id; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ath10k_skb_cb {int dummy; } ;
struct TYPE_2__ {int eid; } ;
struct ath10k {TYPE_1__ wmi; int htc; } ;


 struct ath10k_skb_cb* ATH10K_SKB_CB (struct sk_buff*) ;
 int ENOMEM ;
 int SM (int ,int ) ;
 int WMI_CMD_HDR_CMD_ID ;
 int __cpu_to_le32 (int ) ;
 int ath10k_htc_send (int *,int ,struct sk_buff*) ;
 int memset (struct ath10k_skb_cb*,int ,int) ;
 int skb_pull (struct sk_buff*,int) ;
 int * skb_push (struct sk_buff*,int) ;
 int trace_ath10k_wmi_cmd (struct ath10k*,int ,scalar_t__,int ) ;

int ath10k_wmi_cmd_send_nowait(struct ath10k *ar, struct sk_buff *skb,
          u32 cmd_id)
{
 struct ath10k_skb_cb *skb_cb = ATH10K_SKB_CB(skb);
 struct wmi_cmd_hdr *cmd_hdr;
 int ret;
 u32 cmd = 0;

 if (skb_push(skb, sizeof(struct wmi_cmd_hdr)) == ((void*)0))
  return -ENOMEM;

 cmd |= SM(cmd_id, WMI_CMD_HDR_CMD_ID);

 cmd_hdr = (struct wmi_cmd_hdr *)skb->data;
 cmd_hdr->cmd_id = __cpu_to_le32(cmd);

 memset(skb_cb, 0, sizeof(*skb_cb));
 trace_ath10k_wmi_cmd(ar, cmd_id, skb->data, skb->len);
 ret = ath10k_htc_send(&ar->htc, ar->wmi.eid, skb);

 if (ret)
  goto err_pull;

 return 0;

err_pull:
 skb_pull(skb, sizeof(struct wmi_cmd_hdr));
 return ret;
}
