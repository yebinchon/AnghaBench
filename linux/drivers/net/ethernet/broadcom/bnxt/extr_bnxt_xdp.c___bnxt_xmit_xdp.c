
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct bnxt_tx_ring_info {int dummy; } ;
struct bnxt_sw_tx_bd {int action; int rx_prod; } ;
struct bnxt {int dummy; } ;
typedef int dma_addr_t ;


 int XDP_TX ;
 struct bnxt_sw_tx_bd* bnxt_xmit_bd (struct bnxt*,struct bnxt_tx_ring_info*,int ,int ) ;

__attribute__((used)) static void __bnxt_xmit_xdp(struct bnxt *bp, struct bnxt_tx_ring_info *txr,
       dma_addr_t mapping, u32 len, u16 rx_prod)
{
 struct bnxt_sw_tx_bd *tx_buf;

 tx_buf = bnxt_xmit_bd(bp, txr, mapping, len);
 tx_buf->rx_prod = rx_prod;
 tx_buf->action = XDP_TX;
}
