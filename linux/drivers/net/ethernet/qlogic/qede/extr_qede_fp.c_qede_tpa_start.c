
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sw_rx_data {int mapping; int page_offset; } ;
struct qede_rx_queue {size_t sw_rx_cons; scalar_t__ rx_headroom; struct sw_rx_data* sw_rx_ring; struct qede_agg_info* tpa_info; } ;
struct qede_dev {int dummy; } ;
struct TYPE_3__ {int mapping; int page_offset; } ;
struct qede_agg_info {int tpa_start_fail; int vlan_tag; void* state; int skb; scalar_t__ frag_id; TYPE_1__ buffer; } ;
struct TYPE_4__ {int flags; } ;
struct eth_fast_path_rx_tpa_start_cqe {size_t tpa_agg_index; int len_on_first_bd; int vlan_tag; int* ext_bd_len_list; int rss_hash; int bitfields; TYPE_2__ pars_flags; scalar_t__ placement_offset; } ;


 int DP_ERR (struct qede_dev*,char*) ;
 int DP_NOTICE (struct qede_dev*,char*) ;
 size_t NUM_RX_BDS_MAX ;
 int PARSING_AND_ERR_FLAGS_TAG8021QEXIST_MASK ;
 int PARSING_AND_ERR_FLAGS_TAG8021QEXIST_SHIFT ;
 void* QEDE_AGG_STATE_ERROR ;
 void* QEDE_AGG_STATE_START ;
 int le16_to_cpu (int) ;
 scalar_t__ likely (int) ;
 int qede_fill_frag_skb (struct qede_dev*,struct qede_rx_queue*,size_t,int) ;
 int qede_get_rxhash (int ,int ,int ) ;
 int qede_rx_bd_ring_consume (struct qede_rx_queue*) ;
 int qede_set_gro_params (struct qede_dev*,int ,struct eth_fast_path_rx_tpa_start_cqe*) ;
 int qede_tpa_rx_build_skb (struct qede_dev*,struct qede_rx_queue*,struct sw_rx_data*,int,scalar_t__,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void qede_tpa_start(struct qede_dev *edev,
      struct qede_rx_queue *rxq,
      struct eth_fast_path_rx_tpa_start_cqe *cqe)
{
 struct qede_agg_info *tpa_info = &rxq->tpa_info[cqe->tpa_agg_index];
 struct sw_rx_data *sw_rx_data_cons;
 u16 pad;

 sw_rx_data_cons = &rxq->sw_rx_ring[rxq->sw_rx_cons & NUM_RX_BDS_MAX];
 pad = cqe->placement_offset + rxq->rx_headroom;

 tpa_info->skb = qede_tpa_rx_build_skb(edev, rxq, sw_rx_data_cons,
           le16_to_cpu(cqe->len_on_first_bd),
           pad, 0);
 tpa_info->buffer.page_offset = sw_rx_data_cons->page_offset;
 tpa_info->buffer.mapping = sw_rx_data_cons->mapping;

 if (unlikely(!tpa_info->skb)) {
  DP_NOTICE(edev, "Failed to allocate SKB for gro\n");





  tpa_info->tpa_start_fail = 1;
  qede_rx_bd_ring_consume(rxq);
  tpa_info->state = QEDE_AGG_STATE_ERROR;
  goto cons_buf;
 }

 tpa_info->frag_id = 0;
 tpa_info->state = QEDE_AGG_STATE_START;

 if ((le16_to_cpu(cqe->pars_flags.flags) >>
      PARSING_AND_ERR_FLAGS_TAG8021QEXIST_SHIFT) &
     PARSING_AND_ERR_FLAGS_TAG8021QEXIST_MASK)
  tpa_info->vlan_tag = le16_to_cpu(cqe->vlan_tag);
 else
  tpa_info->vlan_tag = 0;

 qede_get_rxhash(tpa_info->skb, cqe->bitfields, cqe->rss_hash);


 qede_set_gro_params(edev, tpa_info->skb, cqe);

cons_buf:
 if (likely(cqe->ext_bd_len_list[0]))
  qede_fill_frag_skb(edev, rxq, cqe->tpa_agg_index,
       le16_to_cpu(cqe->ext_bd_len_list[0]));

 if (unlikely(cqe->ext_bd_len_list[1])) {
  DP_ERR(edev,
         "Unlikely - got a TPA aggregation with more than one ext_bd_len_list entry in the TPA start\n");
  tpa_info->state = QEDE_AGG_STATE_ERROR;
 }
}
