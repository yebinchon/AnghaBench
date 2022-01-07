
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucc_hdlc_private {scalar_t__ dma_tx_addr; int * tx_buffer; int dev; scalar_t__ dma_rx_addr; int * rx_buffer; int * uccf; int * uf_regs; int * tx_skbuff; int * rx_skbuff; scalar_t__ ucc_pram_offset; TYPE_1__* ucc_pram; scalar_t__ dma_tx_bd; int * tx_bd_base; scalar_t__ dma_rx_bd; int * rx_bd_base; } ;
struct qe_bd {int dummy; } ;
struct TYPE_2__ {scalar_t__ tiptr; scalar_t__ riptr; } ;


 int MAX_RX_BUF_LENGTH ;
 int RX_BD_RING_LEN ;
 int TX_BD_RING_LEN ;
 int dma_free_coherent (int ,int,int *,scalar_t__) ;
 int iounmap (int *) ;
 int kfree (int *) ;
 int qe_muram_free (scalar_t__) ;
 int ucc_fast_free (int *) ;

__attribute__((used)) static void uhdlc_memclean(struct ucc_hdlc_private *priv)
{
 qe_muram_free(priv->ucc_pram->riptr);
 qe_muram_free(priv->ucc_pram->tiptr);

 if (priv->rx_bd_base) {
  dma_free_coherent(priv->dev,
      RX_BD_RING_LEN * sizeof(struct qe_bd),
      priv->rx_bd_base, priv->dma_rx_bd);

  priv->rx_bd_base = ((void*)0);
  priv->dma_rx_bd = 0;
 }

 if (priv->tx_bd_base) {
  dma_free_coherent(priv->dev,
      TX_BD_RING_LEN * sizeof(struct qe_bd),
      priv->tx_bd_base, priv->dma_tx_bd);

  priv->tx_bd_base = ((void*)0);
  priv->dma_tx_bd = 0;
 }

 if (priv->ucc_pram) {
  qe_muram_free(priv->ucc_pram_offset);
  priv->ucc_pram = ((void*)0);
  priv->ucc_pram_offset = 0;
  }

 kfree(priv->rx_skbuff);
 priv->rx_skbuff = ((void*)0);

 kfree(priv->tx_skbuff);
 priv->tx_skbuff = ((void*)0);

 if (priv->uf_regs) {
  iounmap(priv->uf_regs);
  priv->uf_regs = ((void*)0);
 }

 if (priv->uccf) {
  ucc_fast_free(priv->uccf);
  priv->uccf = ((void*)0);
 }

 if (priv->rx_buffer) {
  dma_free_coherent(priv->dev,
      RX_BD_RING_LEN * MAX_RX_BUF_LENGTH,
      priv->rx_buffer, priv->dma_rx_addr);
  priv->rx_buffer = ((void*)0);
  priv->dma_rx_addr = 0;
 }

 if (priv->tx_buffer) {
  dma_free_coherent(priv->dev,
      TX_BD_RING_LEN * MAX_RX_BUF_LENGTH,
      priv->tx_buffer, priv->dma_tx_addr);
  priv->tx_buffer = ((void*)0);
  priv->dma_tx_addr = 0;
 }
}
