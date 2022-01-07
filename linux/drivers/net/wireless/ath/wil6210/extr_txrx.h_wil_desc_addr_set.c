
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wil_ring_dma_addr {int addr_high; int addr_low; } ;
typedef int dma_addr_t ;


 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int lower_32_bits (int ) ;
 scalar_t__ upper_32_bits (int ) ;

__attribute__((used)) static inline void wil_desc_addr_set(struct wil_ring_dma_addr *addr,
         dma_addr_t pa)
{
 addr->addr_low = cpu_to_le32(lower_32_bits(pa));
 addr->addr_high = cpu_to_le16((u16)upper_32_bits(pa));
}
