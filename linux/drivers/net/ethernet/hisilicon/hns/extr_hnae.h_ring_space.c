
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae_ring {int desc_num; int next_to_use; int next_to_clean; } ;


 int ring_dist (struct hnae_ring*,int ,int ) ;

__attribute__((used)) static inline int ring_space(struct hnae_ring *ring)
{
 return ring->desc_num -
  ring_dist(ring, ring->next_to_clean, ring->next_to_use) - 1;
}
