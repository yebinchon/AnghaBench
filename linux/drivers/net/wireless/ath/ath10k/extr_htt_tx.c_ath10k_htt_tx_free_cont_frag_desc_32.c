
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct htt_msdu_ext_desc {int dummy; } ;
struct TYPE_4__ {int * vaddr_desc_32; int paddr; } ;
struct ath10k_htt {int max_num_pending_tx; TYPE_2__ frag_desc; TYPE_1__* ar; } ;
struct TYPE_3__ {int dev; } ;


 int dma_free_coherent (int ,size_t,int *,int ) ;

__attribute__((used)) static void ath10k_htt_tx_free_cont_frag_desc_32(struct ath10k_htt *htt)
{
 size_t size;

 if (!htt->frag_desc.vaddr_desc_32)
  return;

 size = htt->max_num_pending_tx *
   sizeof(struct htt_msdu_ext_desc);

 dma_free_coherent(htt->ar->dev,
     size,
     htt->frag_desc.vaddr_desc_32,
     htt->frag_desc.paddr);

 htt->frag_desc.vaddr_desc_32 = ((void*)0);
}
