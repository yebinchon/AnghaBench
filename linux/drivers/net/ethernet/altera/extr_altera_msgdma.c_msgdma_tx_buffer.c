
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tse_buffer {int len; int dma_addr; } ;
struct altera_tse_private {int tx_dma_desc; } ;


 int MSGDMA_DESC_CTL_TX_SINGLE ;
 int MSGDMA_DESC_TX_STRIDE ;
 int burst_seq_num ;
 int control ;
 int csrwr32 (int ,int ,int ) ;
 int len ;
 int lower_32_bits (int ) ;
 int msgdma_descroffs (int ) ;
 int read_addr_hi ;
 int read_addr_lo ;
 int stride ;
 int upper_32_bits (int ) ;
 int write_addr_hi ;
 int write_addr_lo ;

int msgdma_tx_buffer(struct altera_tse_private *priv, struct tse_buffer *buffer)
{
 csrwr32(lower_32_bits(buffer->dma_addr), priv->tx_dma_desc,
  msgdma_descroffs(read_addr_lo));
 csrwr32(upper_32_bits(buffer->dma_addr), priv->tx_dma_desc,
  msgdma_descroffs(read_addr_hi));
 csrwr32(0, priv->tx_dma_desc, msgdma_descroffs(write_addr_lo));
 csrwr32(0, priv->tx_dma_desc, msgdma_descroffs(write_addr_hi));
 csrwr32(buffer->len, priv->tx_dma_desc, msgdma_descroffs(len));
 csrwr32(0, priv->tx_dma_desc, msgdma_descroffs(burst_seq_num));
 csrwr32(MSGDMA_DESC_TX_STRIDE, priv->tx_dma_desc,
  msgdma_descroffs(stride));
 csrwr32(MSGDMA_DESC_CTL_TX_SINGLE, priv->tx_dma_desc,
  msgdma_descroffs(control));
 return 0;
}
