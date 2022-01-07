
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_hw_ce_regs_addr_map {unsigned int lsb; unsigned int mask; } ;



__attribute__((used)) static inline unsigned int
ath10k_set_ring_byte(unsigned int offset,
       struct ath10k_hw_ce_regs_addr_map *addr_map)
{
 return ((offset << addr_map->lsb) & addr_map->mask);
}
