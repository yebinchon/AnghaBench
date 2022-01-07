
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_sdio_rx_data {int trailer_only; scalar_t__ act_len; scalar_t__ alloc_len; int * skb; } ;


 int dev_kfree_skb (int *) ;

__attribute__((used)) static inline void ath10k_sdio_mbox_free_rx_pkt(struct ath10k_sdio_rx_data *pkt)
{
 dev_kfree_skb(pkt->skb);
 pkt->skb = ((void*)0);
 pkt->alloc_len = 0;
 pkt->act_len = 0;
 pkt->trailer_only = 0;
}
