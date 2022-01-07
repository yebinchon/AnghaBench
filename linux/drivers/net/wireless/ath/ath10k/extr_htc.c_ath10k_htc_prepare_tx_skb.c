
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct ath10k_htc_hdr {scalar_t__ seq_no; int flags; int len; int eid; } ;
struct ath10k_htc_ep {TYPE_1__* htc; int seq_no; scalar_t__ tx_credit_flow_enabled; int eid; } ;
struct TYPE_2__ {int tx_lock; } ;


 int ATH10K_HTC_FLAG_NEED_CREDIT_UPDATE ;
 int __cpu_to_le16 (scalar_t__) ;
 int memset (struct ath10k_htc_hdr*,int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ath10k_htc_prepare_tx_skb(struct ath10k_htc_ep *ep,
          struct sk_buff *skb)
{
 struct ath10k_htc_hdr *hdr;

 hdr = (struct ath10k_htc_hdr *)skb->data;
 memset(hdr, 0, sizeof(struct ath10k_htc_hdr));

 hdr->eid = ep->eid;
 hdr->len = __cpu_to_le16(skb->len - sizeof(*hdr));
 hdr->flags = 0;
 if (ep->tx_credit_flow_enabled)
  hdr->flags |= ATH10K_HTC_FLAG_NEED_CREDIT_UPDATE;

 spin_lock_bh(&ep->htc->tx_lock);
 hdr->seq_no = ep->seq_no++;
 spin_unlock_bh(&ep->htc->tx_lock);
}
