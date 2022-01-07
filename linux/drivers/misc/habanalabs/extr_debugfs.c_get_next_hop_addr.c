
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PAGE_PRESENT_MASK ;
 int PHYS_ADDR_MASK ;
 int ULLONG_MAX ;

__attribute__((used)) static inline u64 get_next_hop_addr(u64 curr_pte)
{
 if (curr_pte & PAGE_PRESENT_MASK)
  return curr_pte & PHYS_ADDR_MASK;
 else
  return ULLONG_MAX;
}
