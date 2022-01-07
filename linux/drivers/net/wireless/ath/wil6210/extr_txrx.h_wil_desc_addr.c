
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct wil_ring_dma_addr {int addr_high; int addr_low; } ;
typedef int dma_addr_t ;


 scalar_t__ le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline dma_addr_t wil_desc_addr(struct wil_ring_dma_addr *addr)
{
 return le32_to_cpu(addr->addr_low) |
      ((u64)le16_to_cpu(addr->addr_high) << 32);
}
