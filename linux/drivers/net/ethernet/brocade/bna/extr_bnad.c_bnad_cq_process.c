
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int features; int ip_summed; } ;
struct bnad_rx_unmap_q {int type; struct bnad_rx_unmap* unmap; } ;
struct bnad_rx_unmap {struct sk_buff* skb; } ;
struct bnad_rx_ctrl {int napi; } ;
struct bnad {struct sk_buff* netdev; } ;
struct bna_rcb {int consumer_index; int flags; int q_depth; TYPE_1__* rxq; struct bnad_rx_unmap_q* unmap_q; } ;
struct bna_pkt_rate {int dummy; } ;
struct bna_cq_entry {scalar_t__ valid; int vlan_tag; int flags; int length; int rxq_id; } ;
struct bna_ccb {size_t producer_index; struct bna_rcb** rcb; int i_dbell; int q_depth; int bytes_per_intr; struct bna_cq_entry* sw_q; struct bnad_rx_ctrl* ctrl; struct bna_pkt_rate pkt_rate; } ;
struct TYPE_2__ {int rx_bytes; int rx_packets; int rx_packets_with_error; } ;


 scalar_t__ BNAD_RXBUF_IS_MULTI_BUFF (int ) ;
 scalar_t__ BNAD_RXBUF_IS_SK_BUFF (int ) ;
 int BNAD_RXQ_STARTED ;
 int BNA_CQ_EF_EOP ;
 int BNA_CQ_EF_FCS_ERROR ;
 int BNA_CQ_EF_MAC_ERROR ;
 int BNA_CQ_EF_TOO_LONG ;
 int BNA_CQ_EF_VLAN ;
 int BNA_QE_INDX_ADD (int,int,int ) ;
 int BNA_QE_INDX_INC (int,int ) ;
 int BNA_UPDATE_PKT_CNT (struct bna_pkt_rate*,int) ;
 int CHECKSUM_UNNECESSARY ;
 int ETH_P_8021Q ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_RXCSUM ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int) ;
 int bna_ib_ack_disable_irq (int ,int) ;
 scalar_t__ bna_is_small_rxq (int ) ;
 int bnad_cq_drop_packet (struct bnad*,struct bna_rcb*,int,int) ;
 int bnad_cq_setup_skb (struct bnad*,struct sk_buff*,struct bnad_rx_unmap*,int) ;
 int bnad_cq_setup_skb_frags (struct bna_ccb*,struct sk_buff*,int) ;
 int bnad_rxq_post (struct bnad*,struct bna_rcb*) ;
 int flags_cksum_prot_mask ;
 int flags_tcp4 ;
 int flags_tcp6 ;
 int flags_udp4 ;
 int flags_udp6 ;
 int htons (int ) ;
 scalar_t__ likely (int) ;
 struct sk_buff* napi_get_frags (int *) ;
 int napi_gro_flush (int *,int) ;
 int napi_gro_frags (int *) ;
 int netif_receive_skb (struct sk_buff*) ;
 int ntohl (int ) ;
 int ntohs (int ) ;
 int prefetch (struct sk_buff*) ;
 int rmb () ;
 int skb_checksum_none_assert (struct sk_buff*) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u32
bnad_cq_process(struct bnad *bnad, struct bna_ccb *ccb, int budget)
{
 struct bna_cq_entry *cq, *cmpl, *next_cmpl;
 struct bna_rcb *rcb = ((void*)0);
 struct bnad_rx_unmap_q *unmap_q;
 struct bnad_rx_unmap *unmap = ((void*)0);
 struct sk_buff *skb = ((void*)0);
 struct bna_pkt_rate *pkt_rt = &ccb->pkt_rate;
 struct bnad_rx_ctrl *rx_ctrl = ccb->ctrl;
 u32 packets = 0, len = 0, totlen = 0;
 u32 pi, vec, sop_ci = 0, nvecs = 0;
 u32 flags, masked_flags;

 prefetch(bnad->netdev);

 cq = ccb->sw_q;

 while (packets < budget) {
  cmpl = &cq[ccb->producer_index];
  if (!cmpl->valid)
   break;







  rmb();

  BNA_UPDATE_PKT_CNT(pkt_rt, ntohs(cmpl->length));

  if (bna_is_small_rxq(cmpl->rxq_id))
   rcb = ccb->rcb[1];
  else
   rcb = ccb->rcb[0];

  unmap_q = rcb->unmap_q;


  sop_ci = rcb->consumer_index;

  if (BNAD_RXBUF_IS_SK_BUFF(unmap_q->type)) {
   unmap = &unmap_q->unmap[sop_ci];
   skb = unmap->skb;
  } else {
   skb = napi_get_frags(&rx_ctrl->napi);
   if (unlikely(!skb))
    break;
  }
  prefetch(skb);

  flags = ntohl(cmpl->flags);
  len = ntohs(cmpl->length);
  totlen = len;
  nvecs = 1;




  if (BNAD_RXBUF_IS_MULTI_BUFF(unmap_q->type) &&
      (flags & BNA_CQ_EF_EOP) == 0) {
   pi = ccb->producer_index;
   do {
    BNA_QE_INDX_INC(pi, ccb->q_depth);
    next_cmpl = &cq[pi];

    if (!next_cmpl->valid)
     break;
    rmb();

    len = ntohs(next_cmpl->length);
    flags = ntohl(next_cmpl->flags);

    nvecs++;
    totlen += len;
   } while ((flags & BNA_CQ_EF_EOP) == 0);

   if (!next_cmpl->valid)
    break;
  }
  packets++;


  if (unlikely(flags & (BNA_CQ_EF_MAC_ERROR |
      BNA_CQ_EF_FCS_ERROR |
      BNA_CQ_EF_TOO_LONG))) {
   bnad_cq_drop_packet(bnad, rcb, sop_ci, nvecs);
   rcb->rxq->rx_packets_with_error++;

   goto next;
  }

  if (BNAD_RXBUF_IS_SK_BUFF(unmap_q->type))
   bnad_cq_setup_skb(bnad, skb, unmap, len);
  else
   bnad_cq_setup_skb_frags(ccb, skb, nvecs);

  rcb->rxq->rx_packets++;
  rcb->rxq->rx_bytes += totlen;
  ccb->bytes_per_intr += totlen;

  masked_flags = flags & flags_cksum_prot_mask;

  if (likely
      ((bnad->netdev->features & NETIF_F_RXCSUM) &&
       ((masked_flags == flags_tcp4) ||
        (masked_flags == flags_udp4) ||
        (masked_flags == flags_tcp6) ||
        (masked_flags == flags_udp6))))
   skb->ip_summed = CHECKSUM_UNNECESSARY;
  else
   skb_checksum_none_assert(skb);

  if ((flags & BNA_CQ_EF_VLAN) &&
      (bnad->netdev->features & NETIF_F_HW_VLAN_CTAG_RX))
   __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), ntohs(cmpl->vlan_tag));

  if (BNAD_RXBUF_IS_SK_BUFF(unmap_q->type))
   netif_receive_skb(skb);
  else
   napi_gro_frags(&rx_ctrl->napi);

next:
  BNA_QE_INDX_ADD(rcb->consumer_index, nvecs, rcb->q_depth);
  for (vec = 0; vec < nvecs; vec++) {
   cmpl = &cq[ccb->producer_index];
   cmpl->valid = 0;
   BNA_QE_INDX_INC(ccb->producer_index, ccb->q_depth);
  }
 }

 napi_gro_flush(&rx_ctrl->napi, 0);
 if (likely(test_bit(BNAD_RXQ_STARTED, &ccb->rcb[0]->flags)))
  bna_ib_ack_disable_irq(ccb->i_dbell, packets);

 bnad_rxq_post(bnad, ccb->rcb[0]);
 if (ccb->rcb[1])
  bnad_rxq_post(bnad, ccb->rcb[1]);

 return packets;
}
