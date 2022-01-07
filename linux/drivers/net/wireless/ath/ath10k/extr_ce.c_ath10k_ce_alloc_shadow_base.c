
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ce_desc_64 {int dummy; } ;
struct ath10k_ce_ring {int shadow_base_unaligned; struct ce_desc_64* shadow_base; } ;
struct ath10k {int dummy; } ;


 int CE_DESC_RING_ALIGN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ PTR_ALIGN (int ,int ) ;
 int kcalloc (int ,int,int ) ;

__attribute__((used)) static int ath10k_ce_alloc_shadow_base(struct ath10k *ar,
           struct ath10k_ce_ring *src_ring,
           u32 nentries)
{
 src_ring->shadow_base_unaligned = kcalloc(nentries,
        sizeof(struct ce_desc_64),
        GFP_KERNEL);
 if (!src_ring->shadow_base_unaligned)
  return -ENOMEM;

 src_ring->shadow_base = (struct ce_desc_64 *)
   PTR_ALIGN(src_ring->shadow_base_unaligned,
      CE_DESC_RING_ALIGN);
 return 0;
}
