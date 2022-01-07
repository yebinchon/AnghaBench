
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct sw_rx_bd {scalar_t__ data; } ;
struct eth_rx_bd {void* addr_lo; void* addr_hi; } ;
struct TYPE_4__ {int flags; } ;
struct eth_fast_path_rx_cqe {int pkt_len_or_gro_seg_len; int placement_offset; int len_on_bd; int vlan_tag; TYPE_2__ pars_flags; } ;
struct bnx2x_fastpath {scalar_t__ mode; int tpa_queue_used; int rx_buf_size; struct bnx2x_agg_info* tpa_info; struct eth_rx_bd* rx_desc_ring; struct sw_rx_bd* rx_buf_ring; struct bnx2x* bp; } ;
struct bnx2x_agg_info {scalar_t__ tpa_state; size_t full_page; size_t gro_size; int rxhash_type; int rxhash; int placement_offset; void* len_on_bd; void* vlan_tag; void* parsing_flags; struct sw_rx_bd first_buf; } ;
struct bnx2x {TYPE_1__* pdev; } ;
typedef int dma_addr_t ;
struct TYPE_3__ {int dev; } ;


 int BNX2X_ERR (char*,size_t) ;
 scalar_t__ BNX2X_TPA_ERROR ;
 scalar_t__ BNX2X_TPA_START ;
 scalar_t__ BNX2X_TPA_STOP ;
 int DMA_FROM_DEVICE ;
 int DP (int ,char*,int) ;
 int NETIF_MSG_RX_STATUS ;
 scalar_t__ NET_SKB_PAD ;
 size_t SGE_PAGES ;
 scalar_t__ TPA_MODE_GRO ;
 int U64_HI (int ) ;
 int U64_LO (int ) ;
 int bnx2x_get_rxhash (struct bnx2x*,struct eth_fast_path_rx_cqe*,int *) ;
 int bnx2x_reuse_rx_data (struct bnx2x_fastpath*,size_t,size_t) ;
 void* cpu_to_le32 (int ) ;
 int dma_map_single (int *,scalar_t__,int ,int ) ;
 int dma_mapping_error (int *,int ) ;
 int dma_unmap_addr_set (struct sw_rx_bd*,int ,int ) ;
 void* le16_to_cpu (int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void bnx2x_tpa_start(struct bnx2x_fastpath *fp, u16 queue,
       u16 cons, u16 prod,
       struct eth_fast_path_rx_cqe *cqe)
{
 struct bnx2x *bp = fp->bp;
 struct sw_rx_bd *cons_rx_buf = &fp->rx_buf_ring[cons];
 struct sw_rx_bd *prod_rx_buf = &fp->rx_buf_ring[prod];
 struct eth_rx_bd *prod_bd = &fp->rx_desc_ring[prod];
 dma_addr_t mapping;
 struct bnx2x_agg_info *tpa_info = &fp->tpa_info[queue];
 struct sw_rx_bd *first_buf = &tpa_info->first_buf;


 if (tpa_info->tpa_state != BNX2X_TPA_STOP)
  BNX2X_ERR("start of bin not in stop [%d]\n", queue);


 mapping = dma_map_single(&bp->pdev->dev,
     first_buf->data + NET_SKB_PAD,
     fp->rx_buf_size, DMA_FROM_DEVICE);






 if (unlikely(dma_mapping_error(&bp->pdev->dev, mapping))) {

  bnx2x_reuse_rx_data(fp, cons, prod);
  tpa_info->tpa_state = BNX2X_TPA_ERROR;
  return;
 }


 prod_rx_buf->data = first_buf->data;
 dma_unmap_addr_set(prod_rx_buf, mapping, mapping);

 prod_bd->addr_hi = cpu_to_le32(U64_HI(mapping));
 prod_bd->addr_lo = cpu_to_le32(U64_LO(mapping));


 *first_buf = *cons_rx_buf;


 tpa_info->parsing_flags =
  le16_to_cpu(cqe->pars_flags.flags);
 tpa_info->vlan_tag = le16_to_cpu(cqe->vlan_tag);
 tpa_info->tpa_state = BNX2X_TPA_START;
 tpa_info->len_on_bd = le16_to_cpu(cqe->len_on_bd);
 tpa_info->placement_offset = cqe->placement_offset;
 tpa_info->rxhash = bnx2x_get_rxhash(bp, cqe, &tpa_info->rxhash_type);
 if (fp->mode == TPA_MODE_GRO) {
  u16 gro_size = le16_to_cpu(cqe->pkt_len_or_gro_seg_len);
  tpa_info->full_page = SGE_PAGES / gro_size * gro_size;
  tpa_info->gro_size = gro_size;
 }






}
