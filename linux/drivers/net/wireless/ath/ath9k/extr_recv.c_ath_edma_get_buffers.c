
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int data; } ;
struct TYPE_2__ {int rxbuf; struct ath_rx_edma* rx_edma; } ;
struct ath_softc {TYPE_1__ rx; int dev; struct ath_hw* sc_ah; } ;
struct ath_rxbuf {int list; int bf_buf_addr; } ;
struct ath_rx_status {int dummy; } ;
struct ath_rx_edma {int rx_fifo; } ;
struct ath_hw {int dummy; } ;
struct ath_common {int rx_bufsize; } ;
typedef enum ath9k_rx_qtype { ____Placeholder_ath9k_rx_qtype } ath9k_rx_qtype ;


 int BUG_ON (int) ;
 int DMA_FROM_DEVICE ;
 int EINPROGRESS ;
 int EINVAL ;
 struct ath_rxbuf* SKB_CB_ATHBUF (struct sk_buff*) ;
 int __skb_unlink (struct sk_buff*,int *) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_process_rxdesc_edma (struct ath_hw*,struct ath_rx_status*,int ) ;
 int ath_rx_edma_buf_link (struct ath_softc*,int) ;
 int dma_sync_single_for_cpu (int ,int ,int ,int ) ;
 int dma_sync_single_for_device (int ,int ,int ,int ) ;
 int list_add_tail (int *,int *) ;
 struct sk_buff* skb_peek (int *) ;

__attribute__((used)) static bool ath_edma_get_buffers(struct ath_softc *sc,
     enum ath9k_rx_qtype qtype,
     struct ath_rx_status *rs,
     struct ath_rxbuf **dest)
{
 struct ath_rx_edma *rx_edma = &sc->rx.rx_edma[qtype];
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);
 struct sk_buff *skb;
 struct ath_rxbuf *bf;
 int ret;

 skb = skb_peek(&rx_edma->rx_fifo);
 if (!skb)
  return 0;

 bf = SKB_CB_ATHBUF(skb);
 BUG_ON(!bf);

 dma_sync_single_for_cpu(sc->dev, bf->bf_buf_addr,
    common->rx_bufsize, DMA_FROM_DEVICE);

 ret = ath9k_hw_process_rxdesc_edma(ah, rs, skb->data);
 if (ret == -EINPROGRESS) {

  dma_sync_single_for_device(sc->dev, bf->bf_buf_addr,
    common->rx_bufsize, DMA_FROM_DEVICE);
  return 0;
 }

 __skb_unlink(skb, &rx_edma->rx_fifo);
 if (ret == -EINVAL) {

  list_add_tail(&bf->list, &sc->rx.rxbuf);
  ath_rx_edma_buf_link(sc, qtype);

  skb = skb_peek(&rx_edma->rx_fifo);
  if (skb) {
   bf = SKB_CB_ATHBUF(skb);
   BUG_ON(!bf);

   __skb_unlink(skb, &rx_edma->rx_fifo);
   list_add_tail(&bf->list, &sc->rx.rxbuf);
   ath_rx_edma_buf_link(sc, qtype);
  }

  bf = ((void*)0);
 }

 *dest = bf;
 return 1;
}
