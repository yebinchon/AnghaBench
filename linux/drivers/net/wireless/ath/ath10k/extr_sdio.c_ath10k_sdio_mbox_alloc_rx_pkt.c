
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_sdio_rx_data {size_t act_len; size_t alloc_len; int part_of_bundle; int last_in_bundle; int trailer_only; int skb; } ;


 int ENOMEM ;
 int dev_alloc_skb (size_t) ;

__attribute__((used)) static inline int ath10k_sdio_mbox_alloc_rx_pkt(struct ath10k_sdio_rx_data *pkt,
      size_t act_len, size_t full_len,
      bool part_of_bundle,
      bool last_in_bundle)
{
 pkt->skb = dev_alloc_skb(full_len);
 if (!pkt->skb)
  return -ENOMEM;

 pkt->act_len = act_len;
 pkt->alloc_len = full_len;
 pkt->part_of_bundle = part_of_bundle;
 pkt->last_in_bundle = last_in_bundle;
 pkt->trailer_only = 0;

 return 0;
}
