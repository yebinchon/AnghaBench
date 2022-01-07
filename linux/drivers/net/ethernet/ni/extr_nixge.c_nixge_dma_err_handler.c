
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct nixge_tx_skb {int dummy; } ;
struct nixge_priv {scalar_t__ tx_bd_p; scalar_t__ rx_bd_p; scalar_t__ rx_bd_ci; scalar_t__ tx_bd_tail; scalar_t__ tx_bd_ci; struct nixge_hw_dma_bd* rx_bd_v; struct nixge_tx_skb* tx_skb; struct nixge_hw_dma_bd* tx_bd_v; } ;
struct nixge_hw_dma_bd {scalar_t__ status; scalar_t__ cntrl; } ;


 size_t RX_BD_NUM ;
 size_t TX_BD_NUM ;
 size_t XAXIDMA_COALESCE_MASK ;
 size_t XAXIDMA_COALESCE_SHIFT ;
 size_t XAXIDMA_CR_RUNSTOP_MASK ;
 size_t XAXIDMA_DELAY_MASK ;
 size_t XAXIDMA_DELAY_SHIFT ;
 size_t XAXIDMA_DFT_RX_THRESHOLD ;
 size_t XAXIDMA_DFT_RX_WAITBOUND ;
 size_t XAXIDMA_DFT_TX_THRESHOLD ;
 size_t XAXIDMA_DFT_TX_WAITBOUND ;
 size_t XAXIDMA_IRQ_ALL_MASK ;
 int XAXIDMA_RX_CDESC_OFFSET ;
 int XAXIDMA_RX_CR_OFFSET ;
 int XAXIDMA_RX_TDESC_OFFSET ;
 int XAXIDMA_TX_CDESC_OFFSET ;
 int XAXIDMA_TX_CR_OFFSET ;
 int __nixge_device_reset (struct nixge_priv*,int ) ;
 size_t nixge_dma_read_reg (struct nixge_priv*,int ) ;
 int nixge_dma_write_desc_reg (struct nixge_priv*,int ,scalar_t__) ;
 int nixge_dma_write_reg (struct nixge_priv*,int ,size_t) ;
 int nixge_hw_dma_bd_set_offset (struct nixge_hw_dma_bd*,int ) ;
 int nixge_hw_dma_bd_set_phys (struct nixge_hw_dma_bd*,int ) ;
 int nixge_tx_skb_unmap (struct nixge_priv*,struct nixge_tx_skb*) ;

__attribute__((used)) static void nixge_dma_err_handler(unsigned long data)
{
 struct nixge_priv *lp = (struct nixge_priv *)data;
 struct nixge_hw_dma_bd *cur_p;
 struct nixge_tx_skb *tx_skb;
 u32 cr, i;

 __nixge_device_reset(lp, XAXIDMA_TX_CR_OFFSET);
 __nixge_device_reset(lp, XAXIDMA_RX_CR_OFFSET);

 for (i = 0; i < TX_BD_NUM; i++) {
  cur_p = &lp->tx_bd_v[i];
  tx_skb = &lp->tx_skb[i];
  nixge_tx_skb_unmap(lp, tx_skb);

  nixge_hw_dma_bd_set_phys(cur_p, 0);
  cur_p->cntrl = 0;
  cur_p->status = 0;
  nixge_hw_dma_bd_set_offset(cur_p, 0);
 }

 for (i = 0; i < RX_BD_NUM; i++) {
  cur_p = &lp->rx_bd_v[i];
  cur_p->status = 0;
 }

 lp->tx_bd_ci = 0;
 lp->tx_bd_tail = 0;
 lp->rx_bd_ci = 0;


 cr = nixge_dma_read_reg(lp, XAXIDMA_RX_CR_OFFSET);

 cr = ((cr & ~XAXIDMA_COALESCE_MASK) |
       (XAXIDMA_DFT_RX_THRESHOLD << XAXIDMA_COALESCE_SHIFT));

 cr = ((cr & ~XAXIDMA_DELAY_MASK) |
       (XAXIDMA_DFT_RX_WAITBOUND << XAXIDMA_DELAY_SHIFT));

 cr |= XAXIDMA_IRQ_ALL_MASK;

 nixge_dma_write_reg(lp, XAXIDMA_RX_CR_OFFSET, cr);


 cr = nixge_dma_read_reg(lp, XAXIDMA_TX_CR_OFFSET);

 cr = (((cr & ~XAXIDMA_COALESCE_MASK)) |
       (XAXIDMA_DFT_TX_THRESHOLD << XAXIDMA_COALESCE_SHIFT));

 cr = (((cr & ~XAXIDMA_DELAY_MASK)) |
       (XAXIDMA_DFT_TX_WAITBOUND << XAXIDMA_DELAY_SHIFT));

 cr |= XAXIDMA_IRQ_ALL_MASK;

 nixge_dma_write_reg(lp, XAXIDMA_TX_CR_OFFSET, cr);




 nixge_dma_write_desc_reg(lp, XAXIDMA_RX_CDESC_OFFSET, lp->rx_bd_p);
 cr = nixge_dma_read_reg(lp, XAXIDMA_RX_CR_OFFSET);
 nixge_dma_write_reg(lp, XAXIDMA_RX_CR_OFFSET,
       cr | XAXIDMA_CR_RUNSTOP_MASK);
 nixge_dma_write_desc_reg(lp, XAXIDMA_RX_TDESC_OFFSET, lp->rx_bd_p +
       (sizeof(*lp->rx_bd_v) * (RX_BD_NUM - 1)));





 nixge_dma_write_desc_reg(lp, XAXIDMA_TX_CDESC_OFFSET, lp->tx_bd_p);
 cr = nixge_dma_read_reg(lp, XAXIDMA_TX_CR_OFFSET);
 nixge_dma_write_reg(lp, XAXIDMA_TX_CR_OFFSET,
       cr | XAXIDMA_CR_RUNSTOP_MASK);
}
