
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct ath10k_htc_hdr {size_t eid; } ;
struct ath10k_htc_ep {int dummy; } ;
struct TYPE_2__ {struct ath10k_htc_ep* endpoint; } ;
struct ath10k {TYPE_1__ htc; } ;


 int ath10k_htc_notify_tx_completion (struct ath10k_htc_ep*,struct sk_buff*) ;

__attribute__((used)) static void ath10k_usb_tx_complete(struct ath10k *ar, struct sk_buff *skb)
{
 struct ath10k_htc_hdr *htc_hdr;
 struct ath10k_htc_ep *ep;

 htc_hdr = (struct ath10k_htc_hdr *)skb->data;
 ep = &ar->htc.endpoint[htc_hdr->eid];
 ath10k_htc_notify_tx_completion(ep, skb);

}
