
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ csum; int ip_summed; int protocol; } ;
struct net_device {int features; } ;
struct ionic_rxq_comp {int pkt_type_color; int csum_flags; int vlan_tci; int csum; int rss_hash; int len; scalar_t__ status; } ;
struct ionic_rx_stats {int csum_error; int csum_none; int csum_complete; int bytes; int pkts; } ;
struct ionic_queue {int index; TYPE_1__* lif; } ;
struct ionic_qcq {int napi; } ;
struct ionic_desc_info {int dummy; } ;
struct ionic_cq_info {struct ionic_rxq_comp* cq_desc; } ;
typedef scalar_t__ __wsum ;
struct TYPE_2__ {int state; struct net_device* netdev; } ;


 int CHECKSUM_COMPLETE ;
 int ETH_P_8021Q ;
 int IONIC_LIF_QUEUE_RESET ;






 int IONIC_RXQ_COMP_CSUM_F_CALC ;
 int IONIC_RXQ_COMP_CSUM_F_IP_BAD ;
 int IONIC_RXQ_COMP_CSUM_F_TCP_BAD ;
 int IONIC_RXQ_COMP_CSUM_F_UDP_BAD ;
 int IONIC_RXQ_COMP_CSUM_F_VLAN ;
 int IONIC_RXQ_COMP_PKT_TYPE_MASK ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_RXHASH ;
 int PKT_HASH_TYPE_L3 ;
 int PKT_HASH_TYPE_L4 ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,scalar_t__) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int htons (int ) ;
 int ionic_rx_copybreak (struct ionic_queue*,struct ionic_desc_info*,struct ionic_cq_info*,struct sk_buff**) ;
 int ionic_rx_recycle (struct ionic_queue*,struct ionic_desc_info*,struct sk_buff*) ;
 scalar_t__ le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 struct ionic_qcq* q_to_qcq (struct ionic_queue*) ;
 struct ionic_rx_stats* q_to_rx_stats (struct ionic_queue*) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 int skb_record_rx_queue (struct sk_buff*,int ) ;
 int skb_set_hash (struct sk_buff*,int ,int ) ;
 int test_bit (int ,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void ionic_rx_clean(struct ionic_queue *q, struct ionic_desc_info *desc_info,
      struct ionic_cq_info *cq_info, void *cb_arg)
{
 struct ionic_rxq_comp *comp = cq_info->cq_desc;
 struct ionic_qcq *qcq = q_to_qcq(q);
 struct sk_buff *skb = cb_arg;
 struct ionic_rx_stats *stats;
 struct net_device *netdev;

 stats = q_to_rx_stats(q);
 netdev = q->lif->netdev;

 if (comp->status) {
  ionic_rx_recycle(q, desc_info, skb);
  return;
 }

 if (unlikely(test_bit(IONIC_LIF_QUEUE_RESET, q->lif->state))) {

  ionic_rx_recycle(q, desc_info, skb);
  return;
 }

 stats->pkts++;
 stats->bytes += le16_to_cpu(comp->len);

 ionic_rx_copybreak(q, desc_info, cq_info, &skb);

 skb_put(skb, le16_to_cpu(comp->len));
 skb->protocol = eth_type_trans(skb, netdev);

 skb_record_rx_queue(skb, q->index);

 if (netdev->features & NETIF_F_RXHASH) {
  switch (comp->pkt_type_color & IONIC_RXQ_COMP_PKT_TYPE_MASK) {
  case 133:
  case 130:
   skb_set_hash(skb, le32_to_cpu(comp->rss_hash),
         PKT_HASH_TYPE_L3);
   break;
  case 132:
  case 129:
  case 131:
  case 128:
   skb_set_hash(skb, le32_to_cpu(comp->rss_hash),
         PKT_HASH_TYPE_L4);
   break;
  }
 }

 if (netdev->features & NETIF_F_RXCSUM) {
  if (comp->csum_flags & IONIC_RXQ_COMP_CSUM_F_CALC) {
   skb->ip_summed = CHECKSUM_COMPLETE;
   skb->csum = (__wsum)le16_to_cpu(comp->csum);
   stats->csum_complete++;
  }
 } else {
  stats->csum_none++;
 }

 if ((comp->csum_flags & IONIC_RXQ_COMP_CSUM_F_TCP_BAD) ||
     (comp->csum_flags & IONIC_RXQ_COMP_CSUM_F_UDP_BAD) ||
     (comp->csum_flags & IONIC_RXQ_COMP_CSUM_F_IP_BAD))
  stats->csum_error++;

 if (netdev->features & NETIF_F_HW_VLAN_CTAG_RX) {
  if (comp->csum_flags & IONIC_RXQ_COMP_CSUM_F_VLAN)
   __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q),
            le16_to_cpu(comp->vlan_tci));
 }

 napi_gro_receive(&qcq->napi, skb);
}
