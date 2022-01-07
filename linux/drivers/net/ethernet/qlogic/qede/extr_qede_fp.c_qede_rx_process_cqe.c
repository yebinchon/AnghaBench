
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
struct eth_fast_path_rx_reg_cqe {int type; size_t placement_offset; size_t bd_num; int vlan_tag; int rss_hash; int bitfields; TYPE_2__ pars_flags; int len_on_first_bd; } ;
union eth_rx_cqe {struct eth_fast_path_rx_reg_cqe fast_path_regular; } ;
typedef scalar_t__ u8 ;
typedef size_t u16 ;
struct sw_rx_data {int dummy; } ;
struct sk_buff {int protocol; } ;
struct qede_rx_queue {size_t sw_rx_cons; size_t rx_headroom; int rxq_id; int rx_alloc_errors; int rx_hw_errors; int rx_ip_frags; struct sw_rx_data* sw_rx_ring; int rx_comp_ring; int xdp_prog; } ;
struct qede_fastpath {int id; } ;
struct qede_dev {int ndev; int cdev; TYPE_1__* ops; } ;
struct eth_slow_path_rx_cqe {int dummy; } ;
struct bpf_prog {int dummy; } ;
typedef enum eth_rx_cqe_type { ____Placeholder_eth_rx_cqe_type } eth_rx_cqe_type ;
typedef int __le16 ;
struct TYPE_3__ {int (* eth_cqe_completion ) (int ,int ,struct eth_slow_path_rx_cqe*) ;} ;


 int ETH_RX_CQE_TYPE_REGULAR ;
 int ETH_RX_CQE_TYPE_SLOW_PATH ;
 size_t NUM_RX_BDS_MAX ;
 scalar_t__ QEDE_CSUM_ERROR ;
 struct bpf_prog* READ_ONCE (int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,int ) ;
 size_t le16_to_cpu (int ) ;
 scalar_t__ qed_chain_consume (int *) ;
 scalar_t__ qede_check_csum (size_t) ;
 int qede_get_rxhash (struct sk_buff*,int ,int ) ;
 scalar_t__ qede_pkt_is_ip_fragmented (struct eth_fast_path_rx_reg_cqe*,size_t) ;
 int qede_ptp_record_rx_ts (struct qede_dev*,union eth_rx_cqe*,struct sk_buff*) ;
 int qede_recycle_rx_bd_ring (struct qede_rx_queue*,size_t) ;
 size_t qede_rx_build_jumbo (struct qede_dev*,struct qede_rx_queue*,struct sk_buff*,struct eth_fast_path_rx_reg_cqe*,size_t) ;
 struct sk_buff* qede_rx_build_skb (struct qede_dev*,struct qede_rx_queue*,struct sw_rx_data*,size_t,size_t) ;
 int qede_rx_process_tpa_cqe (struct qede_dev*,struct qede_fastpath*,struct qede_rx_queue*,union eth_rx_cqe*,int) ;
 int qede_rx_xdp (struct qede_dev*,struct qede_fastpath*,struct qede_rx_queue*,struct bpf_prog*,struct sw_rx_data*,struct eth_fast_path_rx_reg_cqe*,size_t*,size_t*) ;
 int qede_set_skb_csum (struct sk_buff*,scalar_t__) ;
 int qede_skb_receive (struct qede_dev*,struct qede_fastpath*,struct qede_rx_queue*,struct sk_buff*,size_t) ;
 int skb_record_rx_queue (struct sk_buff*,int ) ;
 int stub1 (int ,int ,struct eth_slow_path_rx_cqe*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int qede_rx_process_cqe(struct qede_dev *edev,
          struct qede_fastpath *fp,
          struct qede_rx_queue *rxq)
{
 struct bpf_prog *xdp_prog = READ_ONCE(rxq->xdp_prog);
 struct eth_fast_path_rx_reg_cqe *fp_cqe;
 u16 len, pad, bd_cons_idx, parse_flag;
 enum eth_rx_cqe_type cqe_type;
 union eth_rx_cqe *cqe;
 struct sw_rx_data *bd;
 struct sk_buff *skb;
 __le16 flags;
 u8 csum_flag;


 cqe = (union eth_rx_cqe *)qed_chain_consume(&rxq->rx_comp_ring);
 cqe_type = cqe->fast_path_regular.type;


 if (unlikely(cqe_type == ETH_RX_CQE_TYPE_SLOW_PATH)) {
  struct eth_slow_path_rx_cqe *sp_cqe;

  sp_cqe = (struct eth_slow_path_rx_cqe *)cqe;
  edev->ops->eth_cqe_completion(edev->cdev, fp->id, sp_cqe);
  return 0;
 }


 if (cqe_type != ETH_RX_CQE_TYPE_REGULAR)
  return qede_rx_process_tpa_cqe(edev, fp, rxq, cqe, cqe_type);




 bd_cons_idx = rxq->sw_rx_cons & NUM_RX_BDS_MAX;
 bd = &rxq->sw_rx_ring[bd_cons_idx];

 fp_cqe = &cqe->fast_path_regular;
 len = le16_to_cpu(fp_cqe->len_on_first_bd);
 pad = fp_cqe->placement_offset + rxq->rx_headroom;


 if (xdp_prog)
  if (!qede_rx_xdp(edev, fp, rxq, xdp_prog, bd, fp_cqe,
     &pad, &len))
   return 0;


 flags = cqe->fast_path_regular.pars_flags.flags;
 parse_flag = le16_to_cpu(flags);

 csum_flag = qede_check_csum(parse_flag);
 if (unlikely(csum_flag == QEDE_CSUM_ERROR)) {
  if (qede_pkt_is_ip_fragmented(fp_cqe, parse_flag))
   rxq->rx_ip_frags++;
  else
   rxq->rx_hw_errors++;
 }




 skb = qede_rx_build_skb(edev, rxq, bd, len, pad);
 if (!skb) {
  rxq->rx_alloc_errors++;
  qede_recycle_rx_bd_ring(rxq, fp_cqe->bd_num);
  return 0;
 }




 if (fp_cqe->bd_num > 1) {
  u16 unmapped_frags = qede_rx_build_jumbo(edev, rxq, skb,
        fp_cqe, len);

  if (unlikely(unmapped_frags > 0)) {
   qede_recycle_rx_bd_ring(rxq, unmapped_frags);
   dev_kfree_skb_any(skb);
   return 0;
  }
 }


 skb->protocol = eth_type_trans(skb, edev->ndev);
 qede_get_rxhash(skb, fp_cqe->bitfields, fp_cqe->rss_hash);
 qede_set_skb_csum(skb, csum_flag);
 skb_record_rx_queue(skb, rxq->rxq_id);
 qede_ptp_record_rx_ts(edev, cqe, skb);


 qede_skb_receive(edev, fp, rxq, skb, le16_to_cpu(fp_cqe->vlan_tag));

 return 1;
}
