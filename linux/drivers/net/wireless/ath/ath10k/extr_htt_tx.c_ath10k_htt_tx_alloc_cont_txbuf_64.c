
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath10k_htt_txbuf_64 {int dummy; } ;
struct TYPE_2__ {size_t size; int vaddr_txbuff_64; int paddr; } ;
struct ath10k_htt {int max_num_pending_tx; TYPE_1__ txbuf; struct ath10k* ar; } ;
struct ath10k {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_alloc_coherent (int ,size_t,int *,int ) ;

__attribute__((used)) static int ath10k_htt_tx_alloc_cont_txbuf_64(struct ath10k_htt *htt)
{
 struct ath10k *ar = htt->ar;
 size_t size;

 size = htt->max_num_pending_tx *
   sizeof(struct ath10k_htt_txbuf_64);

 htt->txbuf.vaddr_txbuff_64 = dma_alloc_coherent(ar->dev, size,
       &htt->txbuf.paddr,
       GFP_KERNEL);
 if (!htt->txbuf.vaddr_txbuff_64)
  return -ENOMEM;

 htt->txbuf.size = size;

 return 0;
}
