
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae_ring {scalar_t__ next_to_use; scalar_t__ next_to_clean; } ;


 int assert_is_ring_idx (struct hnae_ring*,scalar_t__) ;

__attribute__((used)) static inline int is_ring_empty(struct hnae_ring *ring)
{
 assert_is_ring_idx(ring, ring->next_to_use);
 assert_is_ring_idx(ring, ring->next_to_clean);

 return ring->next_to_use == ring->next_to_clean;
}
