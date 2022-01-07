
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wmi_pdev_pktlog_enable_cmd {int ev_bitmap; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_WMI ;
 int ATH10K_PKTLOG_ANY ;
 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 int __cpu_to_le32 (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ) ;
 struct sk_buff* ath10k_wmi_alloc_skb (struct ath10k*,int) ;

__attribute__((used)) static struct sk_buff *
ath10k_wmi_op_gen_pktlog_enable(struct ath10k *ar, u32 ev_bitmap)
{
 struct wmi_pdev_pktlog_enable_cmd *cmd;
 struct sk_buff *skb;

 skb = ath10k_wmi_alloc_skb(ar, sizeof(*cmd));
 if (!skb)
  return ERR_PTR(-ENOMEM);

 ev_bitmap &= ATH10K_PKTLOG_ANY;

 cmd = (struct wmi_pdev_pktlog_enable_cmd *)skb->data;
 cmd->ev_bitmap = __cpu_to_le32(ev_bitmap);

 ath10k_dbg(ar, ATH10K_DBG_WMI, "wmi enable pktlog filter 0x%08x\n",
     ev_bitmap);
 return skb;
}
