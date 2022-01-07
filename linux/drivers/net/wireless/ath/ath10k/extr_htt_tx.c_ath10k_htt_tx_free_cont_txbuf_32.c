
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t size; int * vaddr_txbuff_32; int paddr; } ;
struct ath10k_htt {TYPE_1__ txbuf; struct ath10k* ar; } ;
struct ath10k {int dev; } ;


 int dma_free_coherent (int ,size_t,int *,int ) ;

__attribute__((used)) static void ath10k_htt_tx_free_cont_txbuf_32(struct ath10k_htt *htt)
{
 struct ath10k *ar = htt->ar;
 size_t size;

 if (!htt->txbuf.vaddr_txbuff_32)
  return;

 size = htt->txbuf.size;
 dma_free_coherent(ar->dev, size, htt->txbuf.vaddr_txbuff_32,
     htt->txbuf.paddr);
 htt->txbuf.vaddr_txbuff_32 = ((void*)0);
}
