
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ce_desc {int dummy; } ;
struct ce_attr {int dest_nentries; } ;
struct ath10k_ce_ring {int nentries; int nentries_mask; int base_addr_ce_space_unaligned; int base_addr_ce_space; int base_addr_owner_space_unaligned; int base_addr_owner_space; } ;
struct ath10k {int dev; } ;
typedef int dma_addr_t ;


 int ALIGN (int ,scalar_t__) ;
 scalar_t__ CE_DESC_RING_ALIGN ;
 int ENOMEM ;
 struct ath10k_ce_ring* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int PTR_ALIGN (int ,scalar_t__) ;
 int dma_alloc_coherent (int ,scalar_t__,int *,int ) ;
 int kfree (struct ath10k_ce_ring*) ;
 struct ath10k_ce_ring* kzalloc (int ,int ) ;
 int per_transfer_context ;
 int roundup_pow_of_two (int ) ;
 int struct_size (struct ath10k_ce_ring*,int ,int) ;

__attribute__((used)) static struct ath10k_ce_ring *
ath10k_ce_alloc_dest_ring(struct ath10k *ar, unsigned int ce_id,
     const struct ce_attr *attr)
{
 struct ath10k_ce_ring *dest_ring;
 u32 nentries;
 dma_addr_t base_addr;

 nentries = roundup_pow_of_two(attr->dest_nentries);

 dest_ring = kzalloc(struct_size(dest_ring, per_transfer_context,
     nentries), GFP_KERNEL);
 if (dest_ring == ((void*)0))
  return ERR_PTR(-ENOMEM);

 dest_ring->nentries = nentries;
 dest_ring->nentries_mask = nentries - 1;





 dest_ring->base_addr_owner_space_unaligned =
  dma_alloc_coherent(ar->dev,
       (nentries * sizeof(struct ce_desc) +
        CE_DESC_RING_ALIGN),
       &base_addr, GFP_KERNEL);
 if (!dest_ring->base_addr_owner_space_unaligned) {
  kfree(dest_ring);
  return ERR_PTR(-ENOMEM);
 }

 dest_ring->base_addr_ce_space_unaligned = base_addr;

 dest_ring->base_addr_owner_space =
   PTR_ALIGN(dest_ring->base_addr_owner_space_unaligned,
      CE_DESC_RING_ALIGN);
 dest_ring->base_addr_ce_space =
    ALIGN(dest_ring->base_addr_ce_space_unaligned,
          CE_DESC_RING_ALIGN);

 return dest_ring;
}
