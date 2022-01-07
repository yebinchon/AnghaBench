
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns3_enet_ring {scalar_t__ next_to_use; scalar_t__ next_to_clean; } ;



__attribute__((used)) static inline int is_ring_empty(struct hns3_enet_ring *ring)
{
 return ring->next_to_use == ring->next_to_clean;
}
