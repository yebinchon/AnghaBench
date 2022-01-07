
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sk_buff {int data; int len; } ;
struct ath10k_htc_hdr {int trailer_len; int flags; int len; } ;
struct TYPE_2__ {int (* ep_rx_complete ) (struct ath10k*,struct sk_buff*) ;} ;
struct ath10k_htc_ep {scalar_t__ service_id; TYPE_1__ ep_ops; } ;
struct ath10k_htc {struct ath10k_htc_ep* endpoint; } ;
struct ath10k {struct ath10k_htc htc; } ;
typedef enum ath10k_htc_ep_id { ____Placeholder_ath10k_htc_ep_id } ath10k_htc_ep_id ;


 int ATH10K_HTC_FLAG_TRAILER_PRESENT ;
 int ath10k_htc_process_trailer (struct ath10k_htc*,int *,int,int,int *,int *) ;
 int ath10k_warn (struct ath10k*,char*,...) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int eid_from_htc_hdr (struct ath10k_htc_hdr*) ;
 scalar_t__ is_trailer_only_msg (struct ath10k_htc_hdr*) ;
 int le16_to_cpu (int ) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_trim (struct sk_buff*,int) ;
 int stub1 (struct ath10k*,struct sk_buff*) ;

__attribute__((used)) static void ath10k_usb_rx_complete(struct ath10k *ar, struct sk_buff *skb)
{
 struct ath10k_htc *htc = &ar->htc;
 struct ath10k_htc_hdr *htc_hdr;
 enum ath10k_htc_ep_id eid;
 struct ath10k_htc_ep *ep;
 u16 payload_len;
 u8 *trailer;
 int ret;

 htc_hdr = (struct ath10k_htc_hdr *)skb->data;
 eid = eid_from_htc_hdr(htc_hdr);
 ep = &ar->htc.endpoint[eid];

 if (ep->service_id == 0) {
  ath10k_warn(ar, "ep %d is not connected\n", eid);
  goto out_free_skb;
 }

 payload_len = le16_to_cpu(htc_hdr->len);
 if (!payload_len) {
  ath10k_warn(ar, "zero length frame received, firmware crashed?\n");
  goto out_free_skb;
 }

 if (payload_len < htc_hdr->trailer_len) {
  ath10k_warn(ar, "malformed frame received, firmware crashed?\n");
  goto out_free_skb;
 }

 if (htc_hdr->flags & ATH10K_HTC_FLAG_TRAILER_PRESENT) {
  trailer = skb->data + sizeof(*htc_hdr) + payload_len -
     htc_hdr->trailer_len;

  ret = ath10k_htc_process_trailer(htc,
       trailer,
       htc_hdr->trailer_len,
       eid,
       ((void*)0),
       ((void*)0));
  if (ret)
   goto out_free_skb;

  if (is_trailer_only_msg(htc_hdr))
   goto out_free_skb;




  skb_trim(skb, skb->len - htc_hdr->trailer_len);
 }

 skb_pull(skb, sizeof(*htc_hdr));
 ep->ep_ops.ep_rx_complete(ar, skb);


 return;

out_free_skb:
 dev_kfree_skb(skb);
}
