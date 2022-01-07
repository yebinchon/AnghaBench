
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ce_desc_64 {int dummy; } ;
struct ce_attr {int src_nentries; } ;
struct ath10k_ce_ring {int nentries; int nentries_mask; int base_addr_owner_space_unaligned; int base_addr_ce_space_unaligned; int base_addr_ce_space; int base_addr_owner_space; } ;
struct TYPE_2__ {scalar_t__ shadow_reg_support; } ;
struct ath10k {int dev; TYPE_1__ hw_params; } ;
typedef int dma_addr_t ;


 int ALIGN (int ,scalar_t__) ;
 scalar_t__ CE_DESC_RING_ALIGN ;
 int ENOMEM ;
 struct ath10k_ce_ring* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int PTR_ALIGN (int ,scalar_t__) ;
 int ath10k_ce_alloc_shadow_base (struct ath10k*,struct ath10k_ce_ring*,int) ;
 int dma_alloc_coherent (int ,scalar_t__,int *,int ) ;
 int dma_free_coherent (int ,scalar_t__,int ,int ) ;
 int kfree (struct ath10k_ce_ring*) ;
 struct ath10k_ce_ring* kzalloc (int ,int ) ;
 int per_transfer_context ;
 int roundup_pow_of_two (int) ;
 int struct_size (struct ath10k_ce_ring*,int ,int) ;

__attribute__((used)) static struct ath10k_ce_ring *
ath10k_ce_alloc_src_ring_64(struct ath10k *ar, unsigned int ce_id,
       const struct ce_attr *attr)
{
 struct ath10k_ce_ring *src_ring;
 u32 nentries = attr->src_nentries;
 dma_addr_t base_addr;
 int ret;

 nentries = roundup_pow_of_two(nentries);

 src_ring = kzalloc(struct_size(src_ring, per_transfer_context,
           nentries), GFP_KERNEL);
 if (!src_ring)
  return ERR_PTR(-ENOMEM);

 src_ring->nentries = nentries;
 src_ring->nentries_mask = nentries - 1;




 src_ring->base_addr_owner_space_unaligned =
  dma_alloc_coherent(ar->dev,
       (nentries * sizeof(struct ce_desc_64) +
        CE_DESC_RING_ALIGN),
       &base_addr, GFP_KERNEL);
 if (!src_ring->base_addr_owner_space_unaligned) {
  kfree(src_ring);
  return ERR_PTR(-ENOMEM);
 }

 src_ring->base_addr_ce_space_unaligned = base_addr;

 src_ring->base_addr_owner_space =
   PTR_ALIGN(src_ring->base_addr_owner_space_unaligned,
      CE_DESC_RING_ALIGN);
 src_ring->base_addr_ce_space =
   ALIGN(src_ring->base_addr_ce_space_unaligned,
         CE_DESC_RING_ALIGN);

 if (ar->hw_params.shadow_reg_support) {
  ret = ath10k_ce_alloc_shadow_base(ar, src_ring, nentries);
  if (ret) {
   dma_free_coherent(ar->dev,
       (nentries * sizeof(struct ce_desc_64) +
        CE_DESC_RING_ALIGN),
       src_ring->base_addr_owner_space_unaligned,
       base_addr);
   kfree(src_ring);
   return ERR_PTR(ret);
  }
 }

 return src_ring;
}
