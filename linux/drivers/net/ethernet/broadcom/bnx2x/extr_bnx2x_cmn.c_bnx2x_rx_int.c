
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int flags; } ;
struct eth_fast_path_rx_cqe {int type_error_flags; size_t queue_index; size_t placement_offset; int vlan_tag; TYPE_1__ pars_flags; int pkt_len_or_gro_seg_len; int rss_hash_result; int status_flags; } ;
struct TYPE_11__ {size_t queue_index; int pkt_len; } ;
union eth_rx_cqe {struct eth_fast_path_rx_cqe fast_path_cqe; TYPE_4__ end_agg_cqe; } ;
typedef int u8 ;
typedef int u32 ;
typedef size_t u16 ;
struct sw_rx_bd {int* data; } ;
struct sk_buff {int protocol; int data; } ;
struct bnx2x_fastpath {size_t rx_bd_cons; size_t rx_bd_prod; size_t rx_comp_cons; size_t rx_comp_prod; scalar_t__ mode; int rx_sge_prod; union eth_rx_cqe* rx_comp_ring; int napi; int rx_queue; int rx_frag_size; int rx_buf_size; struct bnx2x_agg_info* tpa_info; struct sw_rx_bd* rx_buf_ring; int index; struct bnx2x* bp; } ;
struct bnx2x_agg_info {size_t len_on_bd; size_t full_page; } ;
struct bnx2x {int panic; TYPE_3__* dev; TYPE_2__* pdev; } ;
typedef enum pkt_hash_types { ____Placeholder_pkt_hash_types } pkt_hash_types ;
typedef enum eth_rx_cqe_type { ____Placeholder_eth_rx_cqe_type } eth_rx_cqe_type ;
struct TYPE_12__ {int rx_skb_alloc_failed; int rx_err_discard_pkt; } ;
struct TYPE_10__ {scalar_t__ mtu; int features; } ;
struct TYPE_9__ {int dev; } ;


 int BNX2X_ERR (char*,int ) ;
 scalar_t__ BNX2X_IS_CQE_COMPLETED (struct eth_fast_path_rx_cqe*) ;
 int BNX2X_SEED_CQE (struct eth_fast_path_rx_cqe*) ;
 int CQE_TYPE (int) ;
 int CQE_TYPE_FAST (int) ;
 int CQE_TYPE_SLOW (int) ;
 scalar_t__ CQE_TYPE_START (int) ;
 scalar_t__ CQE_TYPE_STOP (int) ;
 int DMA_FROM_DEVICE ;
 int DP (int,char*,...) ;
 int ETH_FAST_PATH_RX_CQE_PTP_PKT_SHIFT ;
 int ETH_FAST_PATH_RX_CQE_TYPE ;
 scalar_t__ ETH_MAX_PACKET_SIZE ;
 int ETH_P_8021Q ;
 int ETH_RX_ERROR_FALGS ;
 int GFP_ATOMIC ;
 int NETIF_F_RXCSUM ;
 int NETIF_MSG_RX_ERR ;
 int NETIF_MSG_RX_STATUS ;
 size_t NET_SKB_PAD ;
 size_t NEXT_RCQ_IDX (size_t) ;
 size_t NEXT_RX_IDX (size_t) ;
 int PARSING_FLAGS_VLAN ;
 size_t RCQ_BD (size_t) ;
 size_t RX_BD (size_t) ;
 size_t RX_COPY_THRESH ;
 size_t SGE_PAGE_ALIGN (size_t) ;
 size_t SGE_PAGE_SHIFT ;
 scalar_t__ TPA_MODE_DISABLED ;
 scalar_t__ TPA_MODE_GRO ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int) ;
 scalar_t__ bnx2x_alloc_rx_data (struct bnx2x*,struct bnx2x_fastpath*,size_t,int ) ;
 int bnx2x_csum_validate (struct sk_buff*,union eth_rx_cqe*,struct bnx2x_fastpath*,TYPE_6__*) ;
 TYPE_6__* bnx2x_fp_qstats (struct bnx2x*,struct bnx2x_fastpath*) ;
 int bnx2x_frag_free (struct bnx2x_fastpath*,int*) ;
 int bnx2x_get_rxhash (struct bnx2x*,struct eth_fast_path_rx_cqe*,int*) ;
 int bnx2x_reuse_rx_data (struct bnx2x_fastpath*,size_t,size_t) ;
 int bnx2x_set_rx_ts (struct bnx2x*,struct sk_buff*) ;
 int bnx2x_sp_event (struct bnx2x_fastpath*,union eth_rx_cqe*) ;
 int bnx2x_tpa_start (struct bnx2x_fastpath*,size_t,size_t,size_t,struct eth_fast_path_rx_cqe*) ;
 int bnx2x_tpa_stop (struct bnx2x*,struct bnx2x_fastpath*,struct bnx2x_agg_info*,size_t,TYPE_4__*,size_t) ;
 int bnx2x_update_rx_prod (struct bnx2x*,struct bnx2x_fastpath*,size_t,size_t,int ) ;
 int bnx2x_update_sge_prod (struct bnx2x_fastpath*,size_t,TYPE_4__*) ;
 struct sk_buff* build_skb (int*,int ) ;
 int dma_sync_single_for_cpu (int *,int ,size_t,int ) ;
 int dma_unmap_addr (struct sw_rx_bd*,int ) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int eth_type_trans (struct sk_buff*,TYPE_3__*) ;
 int htons (int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 scalar_t__ likely (int) ;
 int mapping ;
 int memcpy (int ,int*,size_t) ;
 struct sk_buff* napi_alloc_skb (int *,size_t) ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 int prefetch (int*) ;
 int rmb () ;
 int skb_checksum_none_assert (struct sk_buff*) ;
 int skb_put (struct sk_buff*,size_t) ;
 int skb_record_rx_queue (struct sk_buff*,int ) ;
 int skb_reserve (struct sk_buff*,size_t) ;
 int skb_set_hash (struct sk_buff*,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int bnx2x_rx_int(struct bnx2x_fastpath *fp, int budget)
{
 struct bnx2x *bp = fp->bp;
 u16 bd_cons, bd_prod, bd_prod_fw, comp_ring_cons;
 u16 sw_comp_cons, sw_comp_prod;
 int rx_pkt = 0;
 union eth_rx_cqe *cqe;
 struct eth_fast_path_rx_cqe *cqe_fp;





 if (budget <= 0)
  return rx_pkt;

 bd_cons = fp->rx_bd_cons;
 bd_prod = fp->rx_bd_prod;
 bd_prod_fw = bd_prod;
 sw_comp_cons = fp->rx_comp_cons;
 sw_comp_prod = fp->rx_comp_prod;

 comp_ring_cons = RCQ_BD(sw_comp_cons);
 cqe = &fp->rx_comp_ring[comp_ring_cons];
 cqe_fp = &cqe->fast_path_cqe;

 DP(NETIF_MSG_RX_STATUS,
    "queue[%d]: sw_comp_cons %u\n", fp->index, sw_comp_cons);

 while (BNX2X_IS_CQE_COMPLETED(cqe_fp)) {
  struct sw_rx_bd *rx_buf = ((void*)0);
  struct sk_buff *skb;
  u8 cqe_fp_flags;
  enum eth_rx_cqe_type cqe_fp_type;
  u16 len, pad, queue;
  u8 *data;
  u32 rxhash;
  enum pkt_hash_types rxhash_type;






  bd_prod = RX_BD(bd_prod);
  bd_cons = RX_BD(bd_cons);
  rmb();

  cqe_fp_flags = cqe_fp->type_error_flags;
  cqe_fp_type = cqe_fp_flags & ETH_FAST_PATH_RX_CQE_TYPE;

  DP(NETIF_MSG_RX_STATUS,
     "CQE type %x  err %x  status %x  queue %x  vlan %x  len %u\n",
     CQE_TYPE(cqe_fp_flags),
     cqe_fp_flags, cqe_fp->status_flags,
     le32_to_cpu(cqe_fp->rss_hash_result),
     le16_to_cpu(cqe_fp->vlan_tag),
     le16_to_cpu(cqe_fp->pkt_len_or_gro_seg_len));


  if (unlikely(CQE_TYPE_SLOW(cqe_fp_type))) {
   bnx2x_sp_event(fp, cqe);
   goto next_cqe;
  }

  rx_buf = &fp->rx_buf_ring[bd_cons];
  data = rx_buf->data;

  if (!CQE_TYPE_FAST(cqe_fp_type)) {
   struct bnx2x_agg_info *tpa_info;
   u16 frag_size, pages;
   if (CQE_TYPE_START(cqe_fp_type)) {
    u16 queue = cqe_fp->queue_index;
    DP(NETIF_MSG_RX_STATUS,
       "calling tpa_start on queue %d\n",
       queue);

    bnx2x_tpa_start(fp, queue,
      bd_cons, bd_prod,
      cqe_fp);

    goto next_rx;
   }
   queue = cqe->end_agg_cqe.queue_index;
   tpa_info = &fp->tpa_info[queue];
   DP(NETIF_MSG_RX_STATUS,
      "calling tpa_stop on queue %d\n",
      queue);

   frag_size = le16_to_cpu(cqe->end_agg_cqe.pkt_len) -
        tpa_info->len_on_bd;

   if (fp->mode == TPA_MODE_GRO)
    pages = (frag_size + tpa_info->full_page - 1) /
      tpa_info->full_page;
   else
    pages = SGE_PAGE_ALIGN(frag_size) >>
     SGE_PAGE_SHIFT;

   bnx2x_tpa_stop(bp, fp, tpa_info, pages,
           &cqe->end_agg_cqe, comp_ring_cons);





   bnx2x_update_sge_prod(fp, pages, &cqe->end_agg_cqe);
   goto next_cqe;
  }

  len = le16_to_cpu(cqe_fp->pkt_len_or_gro_seg_len);
  pad = cqe_fp->placement_offset;
  dma_sync_single_for_cpu(&bp->pdev->dev,
     dma_unmap_addr(rx_buf, mapping),
     pad + RX_COPY_THRESH,
     DMA_FROM_DEVICE);
  pad += NET_SKB_PAD;
  prefetch(data + pad);

  if (unlikely(cqe_fp_flags & ETH_RX_ERROR_FALGS)) {
   DP(NETIF_MSG_RX_ERR | NETIF_MSG_RX_STATUS,
      "ERROR  flags %x  rx packet %u\n",
      cqe_fp_flags, sw_comp_cons);
   bnx2x_fp_qstats(bp, fp)->rx_err_discard_pkt++;
   goto reuse_rx;
  }




  if ((bp->dev->mtu > ETH_MAX_PACKET_SIZE) &&
      (len <= RX_COPY_THRESH)) {
   skb = napi_alloc_skb(&fp->napi, len);
   if (skb == ((void*)0)) {
    DP(NETIF_MSG_RX_ERR | NETIF_MSG_RX_STATUS,
       "ERROR  packet dropped because of alloc failure\n");
    bnx2x_fp_qstats(bp, fp)->rx_skb_alloc_failed++;
    goto reuse_rx;
   }
   memcpy(skb->data, data + pad, len);
   bnx2x_reuse_rx_data(fp, bd_cons, bd_prod);
  } else {
   if (likely(bnx2x_alloc_rx_data(bp, fp, bd_prod,
             GFP_ATOMIC) == 0)) {
    dma_unmap_single(&bp->pdev->dev,
       dma_unmap_addr(rx_buf, mapping),
       fp->rx_buf_size,
       DMA_FROM_DEVICE);
    skb = build_skb(data, fp->rx_frag_size);
    if (unlikely(!skb)) {
     bnx2x_frag_free(fp, data);
     bnx2x_fp_qstats(bp, fp)->
       rx_skb_alloc_failed++;
     goto next_rx;
    }
    skb_reserve(skb, pad);
   } else {
    DP(NETIF_MSG_RX_ERR | NETIF_MSG_RX_STATUS,
       "ERROR  packet dropped because of alloc failure\n");
    bnx2x_fp_qstats(bp, fp)->rx_skb_alloc_failed++;
reuse_rx:
    bnx2x_reuse_rx_data(fp, bd_cons, bd_prod);
    goto next_rx;
   }
  }

  skb_put(skb, len);
  skb->protocol = eth_type_trans(skb, bp->dev);


  rxhash = bnx2x_get_rxhash(bp, cqe_fp, &rxhash_type);
  skb_set_hash(skb, rxhash, rxhash_type);

  skb_checksum_none_assert(skb);

  if (bp->dev->features & NETIF_F_RXCSUM)
   bnx2x_csum_validate(skb, cqe, fp,
         bnx2x_fp_qstats(bp, fp));

  skb_record_rx_queue(skb, fp->rx_queue);


  if (unlikely(cqe->fast_path_cqe.type_error_flags &
        (1 << ETH_FAST_PATH_RX_CQE_PTP_PKT_SHIFT)))
   bnx2x_set_rx_ts(bp, skb);

  if (le16_to_cpu(cqe_fp->pars_flags.flags) &
      PARSING_FLAGS_VLAN)
   __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q),
            le16_to_cpu(cqe_fp->vlan_tag));

  napi_gro_receive(&fp->napi, skb);
next_rx:
  rx_buf->data = ((void*)0);

  bd_cons = NEXT_RX_IDX(bd_cons);
  bd_prod = NEXT_RX_IDX(bd_prod);
  bd_prod_fw = NEXT_RX_IDX(bd_prod_fw);
  rx_pkt++;
next_cqe:
  sw_comp_prod = NEXT_RCQ_IDX(sw_comp_prod);
  sw_comp_cons = NEXT_RCQ_IDX(sw_comp_cons);


  BNX2X_SEED_CQE(cqe_fp);

  if (rx_pkt == budget)
   break;

  comp_ring_cons = RCQ_BD(sw_comp_cons);
  cqe = &fp->rx_comp_ring[comp_ring_cons];
  cqe_fp = &cqe->fast_path_cqe;
 }

 fp->rx_bd_cons = bd_cons;
 fp->rx_bd_prod = bd_prod_fw;
 fp->rx_comp_cons = sw_comp_cons;
 fp->rx_comp_prod = sw_comp_prod;


 bnx2x_update_rx_prod(bp, fp, bd_prod_fw, sw_comp_prod,
        fp->rx_sge_prod);

 return rx_pkt;
}
