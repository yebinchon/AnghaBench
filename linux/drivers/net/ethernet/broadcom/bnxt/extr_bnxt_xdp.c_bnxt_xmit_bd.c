
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t u16 ;
struct tx_bd {size_t tx_bd_opaque; int tx_bd_haddr; int tx_bd_len_flags_type; } ;
struct bnxt_tx_ring_info {size_t tx_prod; struct tx_bd** tx_desc_ring; struct bnxt_sw_tx_bd* tx_buf_ring; } ;
struct bnxt_sw_tx_bd {int dummy; } ;
struct bnxt {int dummy; } ;
typedef int dma_addr_t ;


 size_t NEXT_TX (size_t) ;
 int TX_BD_FLAGS_BD_CNT_SHIFT ;
 int TX_BD_FLAGS_PACKET_END ;
 int TX_BD_LEN_SHIFT ;
 size_t TX_IDX (size_t) ;
 size_t TX_RING (size_t) ;
 int* bnxt_lhint_arr ;
 int cpu_to_le32 (int) ;
 int cpu_to_le64 (int ) ;

struct bnxt_sw_tx_bd *bnxt_xmit_bd(struct bnxt *bp,
       struct bnxt_tx_ring_info *txr,
       dma_addr_t mapping, u32 len)
{
 struct bnxt_sw_tx_bd *tx_buf;
 struct tx_bd *txbd;
 u32 flags;
 u16 prod;

 prod = txr->tx_prod;
 tx_buf = &txr->tx_buf_ring[prod];

 txbd = &txr->tx_desc_ring[TX_RING(prod)][TX_IDX(prod)];
 flags = (len << TX_BD_LEN_SHIFT) | (1 << TX_BD_FLAGS_BD_CNT_SHIFT) |
  TX_BD_FLAGS_PACKET_END | bnxt_lhint_arr[len >> 9];
 txbd->tx_bd_len_flags_type = cpu_to_le32(flags);
 txbd->tx_bd_opaque = prod;
 txbd->tx_bd_haddr = cpu_to_le64(mapping);

 prod = NEXT_TX(prod);
 txr->tx_prod = prod;
 return tx_buf;
}
