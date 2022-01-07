
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae_ring {int desc_num; } ;


 int assert_is_ring_idx (struct hnae_ring*,int) ;

__attribute__((used)) static inline int ring_dist(struct hnae_ring *ring, int begin, int end)
{
 assert_is_ring_idx(ring, begin);
 assert_is_ring_idx(ring, end);

 return (end - begin + ring->desc_num) % ring->desc_num;
}
