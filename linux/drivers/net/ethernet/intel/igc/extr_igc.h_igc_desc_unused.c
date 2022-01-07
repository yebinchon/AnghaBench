
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct igc_ring {scalar_t__ next_to_clean; scalar_t__ next_to_use; scalar_t__ count; } ;



__attribute__((used)) static inline u16 igc_desc_unused(const struct igc_ring *ring)
{
 u16 ntc = ring->next_to_clean;
 u16 ntu = ring->next_to_use;

 return ((ntc > ntu) ? 0 : ring->count) + ntc - ntu - 1;
}
