
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_hw_ce_regs_addr_map {unsigned int mask; unsigned int lsb; } ;



__attribute__((used)) static inline unsigned int
ath10k_get_ring_byte(unsigned int offset,
       struct ath10k_hw_ce_regs_addr_map *addr_map)
{
 return ((offset & addr_map->mask) >> (addr_map->lsb));
}
