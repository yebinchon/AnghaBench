
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igc_ring_container {int count; struct igc_ring* ring; } ;
struct igc_ring {int dummy; } ;



__attribute__((used)) static void igc_add_ring(struct igc_ring *ring,
    struct igc_ring_container *head)
{
 head->ring = ring;
 head->count++;
}
