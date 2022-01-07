
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ce_desc {int flags; int nbytes; int addr; } ;
struct ath10k_ce_ring {struct ce_desc* base_addr_owner_space; } ;
struct ath10k {int dummy; } ;
typedef int dma_addr_t ;


 int CE_DESC_FLAGS_META_DATA ;
 struct ce_desc* CE_SRC_RING_TO_DESC (struct ce_desc*,int ) ;
 int MS (int ,int ) ;
 int __le16_to_cpu (int ) ;
 int __le32_to_cpu (int ) ;

__attribute__((used)) static void ath10k_ce_extract_desc_data(struct ath10k *ar,
     struct ath10k_ce_ring *src_ring,
     u32 sw_index,
     dma_addr_t *bufferp,
     u32 *nbytesp,
     u32 *transfer_idp)
{
  struct ce_desc *base = src_ring->base_addr_owner_space;
  struct ce_desc *desc = CE_SRC_RING_TO_DESC(base, sw_index);


  *bufferp = __le32_to_cpu(desc->addr);
  *nbytesp = __le16_to_cpu(desc->nbytes);
  *transfer_idp = MS(__le16_to_cpu(desc->flags),
       CE_DESC_FLAGS_META_DATA);
}
