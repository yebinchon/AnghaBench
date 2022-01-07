
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_ring {scalar_t__ next_to_clean; scalar_t__ next_to_use; int count; } ;



__attribute__((used)) static int e1000_desc_unused(struct e1000_ring *ring)
{
 if (ring->next_to_clean > ring->next_to_use)
  return ring->next_to_clean - ring->next_to_use - 1;

 return ring->count + ring->next_to_clean - ring->next_to_use - 1;
}
