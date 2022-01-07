
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wmi_cmd_hdr {void* seq_no; void* command_id; } ;
struct wmi {int tx_seq_id; int last_seq_id; int ctrl_epid; int htc; int wmi_lock; } ;
struct sk_buff {int dummy; } ;
typedef enum wmi_cmd_id { ____Placeholder_wmi_cmd_id } wmi_cmd_id ;


 void* cpu_to_be16 (int) ;
 int htc_send_epid (int ,struct sk_buff*,int ) ;
 struct wmi_cmd_hdr* skb_push (struct sk_buff*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ath9k_wmi_cmd_issue(struct wmi *wmi,
          struct sk_buff *skb,
          enum wmi_cmd_id cmd, u16 len)
{
 struct wmi_cmd_hdr *hdr;
 unsigned long flags;

 hdr = skb_push(skb, sizeof(struct wmi_cmd_hdr));
 hdr->command_id = cpu_to_be16(cmd);
 hdr->seq_no = cpu_to_be16(++wmi->tx_seq_id);

 spin_lock_irqsave(&wmi->wmi_lock, flags);
 wmi->last_seq_id = wmi->tx_seq_id;
 spin_unlock_irqrestore(&wmi->wmi_lock, flags);

 return htc_send_epid(wmi->htc, skb, wmi->ctrl_epid);
}
