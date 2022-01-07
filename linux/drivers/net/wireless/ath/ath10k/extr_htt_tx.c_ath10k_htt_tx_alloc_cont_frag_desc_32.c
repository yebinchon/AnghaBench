
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct htt_msdu_ext_desc {int dummy; } ;
struct TYPE_4__ {size_t size; int vaddr_desc_32; int paddr; } ;
struct ath10k_htt {int max_num_pending_tx; TYPE_2__ frag_desc; struct ath10k* ar; } ;
struct TYPE_3__ {int continuous_frag_desc; } ;
struct ath10k {int dev; TYPE_1__ hw_params; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ath10k_err (struct ath10k*,char*) ;
 int dma_alloc_coherent (int ,size_t,int *,int ) ;

__attribute__((used)) static int ath10k_htt_tx_alloc_cont_frag_desc_32(struct ath10k_htt *htt)
{
 struct ath10k *ar = htt->ar;
 size_t size;

 if (!ar->hw_params.continuous_frag_desc)
  return 0;

 size = htt->max_num_pending_tx *
   sizeof(struct htt_msdu_ext_desc);
 htt->frag_desc.vaddr_desc_32 = dma_alloc_coherent(ar->dev, size,
         &htt->frag_desc.paddr,
         GFP_KERNEL);
 if (!htt->frag_desc.vaddr_desc_32) {
  ath10k_err(ar, "failed to alloc fragment desc memory\n");
  return -ENOMEM;
 }
 htt->frag_desc.size = size;

 return 0;
}
