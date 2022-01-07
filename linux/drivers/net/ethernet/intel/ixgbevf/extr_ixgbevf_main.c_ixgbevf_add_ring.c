
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbevf_ring_container {int count; struct ixgbevf_ring* ring; } ;
struct ixgbevf_ring {struct ixgbevf_ring* next; } ;



__attribute__((used)) static void ixgbevf_add_ring(struct ixgbevf_ring *ring,
        struct ixgbevf_ring_container *head)
{
 ring->next = head->ring;
 head->ring = ring;
 head->count++;
}
