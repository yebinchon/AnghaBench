
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ce_desc_64 {int flags; int nbytes; int addr; } ;
struct ath10k_ce_ring {struct ce_desc_64* base_addr_owner_space; } ;
struct ath10k {int dummy; } ;
typedef int dma_addr_t ;


 int CE_DESC_FLAGS_META_DATA ;
 struct ce_desc_64* CE_SRC_RING_TO_DESC_64 (struct ce_desc_64*,int ) ;
 int MS (int ,int ) ;
 int __le16_to_cpu (int ) ;
 int __le64_to_cpu (int ) ;

__attribute__((used)) static void ath10k_ce_extract_desc_data_64(struct ath10k *ar,
        struct ath10k_ce_ring *src_ring,
        u32 sw_index,
        dma_addr_t *bufferp,
        u32 *nbytesp,
        u32 *transfer_idp)
{
  struct ce_desc_64 *base = src_ring->base_addr_owner_space;
  struct ce_desc_64 *desc =
   CE_SRC_RING_TO_DESC_64(base, sw_index);


  *bufferp = __le64_to_cpu(desc->addr);
  *nbytesp = __le16_to_cpu(desc->nbytes);
  *transfer_idp = MS(__le16_to_cpu(desc->flags),
       CE_DESC_FLAGS_META_DATA);
}
