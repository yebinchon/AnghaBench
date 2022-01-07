
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wmi_cmd_hdr {int seq_no; int command_id; } ;
struct wmi {scalar_t__ last_seq_id; int wmi_lock; int wmi_event_tasklet; int wmi_event_queue; int stopped; } ;
struct sk_buff {scalar_t__ data; } ;
typedef enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;


 int __skb_queue_tail (int *,struct sk_buff*) ;
 int ath9k_wmi_rsp_callback (struct wmi*,struct sk_buff*) ;
 scalar_t__ be16_to_cpu (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void ath9k_wmi_ctrl_rx(void *priv, struct sk_buff *skb,
         enum htc_endpoint_id epid)
{
 struct wmi *wmi = priv;
 struct wmi_cmd_hdr *hdr;
 unsigned long flags;
 u16 cmd_id;

 if (unlikely(wmi->stopped))
  goto free_skb;

 hdr = (struct wmi_cmd_hdr *) skb->data;
 cmd_id = be16_to_cpu(hdr->command_id);

 if (cmd_id & 0x1000) {
  spin_lock_irqsave(&wmi->wmi_lock, flags);
  __skb_queue_tail(&wmi->wmi_event_queue, skb);
  spin_unlock_irqrestore(&wmi->wmi_lock, flags);
  tasklet_schedule(&wmi->wmi_event_tasklet);
  return;
 }


 spin_lock_irqsave(&wmi->wmi_lock, flags);
 if (be16_to_cpu(hdr->seq_no) != wmi->last_seq_id) {
  spin_unlock_irqrestore(&wmi->wmi_lock, flags);
  goto free_skb;
 }
 spin_unlock_irqrestore(&wmi->wmi_lock, flags);


 ath9k_wmi_rsp_callback(wmi, skb);

free_skb:
 kfree_skb(skb);
}
