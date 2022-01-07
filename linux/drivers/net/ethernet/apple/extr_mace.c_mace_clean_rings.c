
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mace_data {int tx_empty; int tx_fill; int ** tx_bufs; int ** rx_bufs; } ;


 int N_RX_RING ;
 int N_TX_RING ;
 int dev_kfree_skb (int *) ;

__attribute__((used)) static inline void mace_clean_rings(struct mace_data *mp)
{
    int i;


    for (i = 0; i < N_RX_RING; ++i) {
 if (mp->rx_bufs[i] != ((void*)0)) {
     dev_kfree_skb(mp->rx_bufs[i]);
     mp->rx_bufs[i] = ((void*)0);
 }
    }
    for (i = mp->tx_empty; i != mp->tx_fill; ) {
 dev_kfree_skb(mp->tx_bufs[i]);
 if (++i >= N_TX_RING)
     i = 0;
    }
}
