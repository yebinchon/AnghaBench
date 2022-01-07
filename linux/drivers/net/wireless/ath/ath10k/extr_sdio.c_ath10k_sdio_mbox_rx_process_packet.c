
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ath10k_sdio_rx_data {int trailer_only; struct sk_buff* skb; } ;
struct ath10k_htc_hdr {int flags; scalar_t__ trailer_len; int eid; } ;
struct ath10k_htc {int dummy; } ;
struct ath10k {struct ath10k_htc htc; } ;
typedef enum ath10k_htc_ep_id { ____Placeholder_ath10k_htc_ep_id } ath10k_htc_ep_id ;


 int ATH10K_HTC_FLAG_TRAILER_PRESENT ;
 int ath10k_htc_process_trailer (struct ath10k_htc*,int *,scalar_t__,int,int *,int*) ;
 scalar_t__ is_trailer_only_msg (struct ath10k_sdio_rx_data*) ;
 int pipe_id_to_eid (int ) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_trim (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static int ath10k_sdio_mbox_rx_process_packet(struct ath10k *ar,
           struct ath10k_sdio_rx_data *pkt,
           u32 *lookaheads,
           int *n_lookaheads)
{
 struct ath10k_htc *htc = &ar->htc;
 struct sk_buff *skb = pkt->skb;
 struct ath10k_htc_hdr *htc_hdr = (struct ath10k_htc_hdr *)skb->data;
 bool trailer_present = htc_hdr->flags & ATH10K_HTC_FLAG_TRAILER_PRESENT;
 enum ath10k_htc_ep_id eid;
 u8 *trailer;
 int ret;

 if (trailer_present) {
  trailer = skb->data + skb->len - htc_hdr->trailer_len;

  eid = pipe_id_to_eid(htc_hdr->eid);

  ret = ath10k_htc_process_trailer(htc,
       trailer,
       htc_hdr->trailer_len,
       eid,
       lookaheads,
       n_lookaheads);
  if (ret)
   return ret;

  if (is_trailer_only_msg(pkt))
   pkt->trailer_only = 1;

  skb_trim(skb, skb->len - htc_hdr->trailer_len);
 }

 skb_pull(skb, sizeof(*htc_hdr));

 return 0;
}
