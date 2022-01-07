
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_dmaring {int stopped; int current_slot; int used_slots; int tx; } ;


 int B43_WARN_ON (int) ;
 scalar_t__ free_slots (struct b43_dmaring*) ;
 int next_slot (struct b43_dmaring*,int) ;
 int update_max_used_slots (struct b43_dmaring*,int ) ;

__attribute__((used)) static inline int request_slot(struct b43_dmaring *ring)
{
 int slot;

 B43_WARN_ON(!ring->tx);
 B43_WARN_ON(ring->stopped);
 B43_WARN_ON(free_slots(ring) == 0);

 slot = next_slot(ring, ring->current_slot);
 ring->current_slot = slot;
 ring->used_slots++;

 update_max_used_slots(ring, ring->used_slots);

 return slot;
}
