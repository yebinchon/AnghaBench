
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct fm10k_ring {scalar_t__ next_to_clean; scalar_t__ next_to_use; scalar_t__ count; } ;
typedef scalar_t__ s16 ;


 scalar_t__ likely (int) ;

__attribute__((used)) static inline u16 fm10k_desc_unused(struct fm10k_ring *ring)
{
 s16 unused = ring->next_to_clean - ring->next_to_use - 1;

 return likely(unused < 0) ? unused + ring->count : unused;
}
