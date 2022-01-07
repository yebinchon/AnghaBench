
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {int len; int * data; } ;
struct rxtid {int q; } ;
struct ethhdr {int h_proto; } ;
struct aggr_info {int dummy; } ;


 int ALIGN (int,int) ;
 int MAX_MSDU_SUBFRAME_PAYLOAD_LEN ;
 int MIN_MSDU_SUBFRAME_PAYLOAD_LEN ;
 struct sk_buff* aggr_get_free_skb (struct aggr_info*) ;
 int ath6kl_err (char*,...) ;
 scalar_t__ ath6kl_wmi_dot3_2_dix (struct sk_buff*) ;
 int be16_to_cpu (int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int memcpy (int *,int *,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static void aggr_slice_amsdu(struct aggr_info *p_aggr,
        struct rxtid *rxtid, struct sk_buff *skb)
{
 struct sk_buff *new_skb;
 struct ethhdr *hdr;
 u16 frame_8023_len, payload_8023_len, mac_hdr_len, amsdu_len;
 u8 *framep;

 mac_hdr_len = sizeof(struct ethhdr);
 framep = skb->data + mac_hdr_len;
 amsdu_len = skb->len - mac_hdr_len;

 while (amsdu_len > mac_hdr_len) {
  hdr = (struct ethhdr *) framep;
  payload_8023_len = be16_to_cpu(hdr->h_proto);

  if (payload_8023_len < MIN_MSDU_SUBFRAME_PAYLOAD_LEN ||
      payload_8023_len > MAX_MSDU_SUBFRAME_PAYLOAD_LEN) {
   ath6kl_err("802.3 AMSDU frame bound check failed. len %d\n",
       payload_8023_len);
   break;
  }

  frame_8023_len = payload_8023_len + mac_hdr_len;
  new_skb = aggr_get_free_skb(p_aggr);
  if (!new_skb) {
   ath6kl_err("no buffer available\n");
   break;
  }

  memcpy(new_skb->data, framep, frame_8023_len);
  skb_put(new_skb, frame_8023_len);
  if (ath6kl_wmi_dot3_2_dix(new_skb)) {
   ath6kl_err("dot3_2_dix error\n");
   dev_kfree_skb(new_skb);
   break;
  }

  skb_queue_tail(&rxtid->q, new_skb);


  if ((amsdu_len - frame_8023_len) == 0)
   break;




  frame_8023_len = ALIGN(frame_8023_len, 4);

  framep += frame_8023_len;
  amsdu_len -= frame_8023_len;
 }

 dev_kfree_skb(skb);
}
