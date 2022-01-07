
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int addr_high; int addr_low; } ;
struct wil_ring_tx_enhanced_dma {int addr_high_high; TYPE_1__ addr; } ;
typedef int dma_addr_t ;


 scalar_t__ le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline
dma_addr_t wil_tx_desc_get_addr_edma(struct wil_ring_tx_enhanced_dma *dma)
{
 return le32_to_cpu(dma->addr.addr_low) |
      ((u64)le16_to_cpu(dma->addr.addr_high) << 32) |
      ((u64)le16_to_cpu(dma->addr_high_high) << 48);
}
