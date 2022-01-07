
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bigmac {int ** tx_skbs; int ** rx_skbs; } ;


 int RX_RING_SIZE ;
 int TX_RING_SIZE ;
 int dev_kfree_skb_any (int *) ;

__attribute__((used)) static void bigmac_clean_rings(struct bigmac *bp)
{
 int i;

 for (i = 0; i < RX_RING_SIZE; i++) {
  if (bp->rx_skbs[i] != ((void*)0)) {
   dev_kfree_skb_any(bp->rx_skbs[i]);
   bp->rx_skbs[i] = ((void*)0);
  }
 }

 for (i = 0; i < TX_RING_SIZE; i++) {
  if (bp->tx_skbs[i] != ((void*)0)) {
   dev_kfree_skb_any(bp->tx_skbs[i]);
   bp->tx_skbs[i] = ((void*)0);
  }
 }
}
