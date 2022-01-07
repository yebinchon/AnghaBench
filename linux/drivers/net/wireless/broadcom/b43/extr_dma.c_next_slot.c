
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_dmaring {int nr_slots; } ;


 int B43_WARN_ON (int) ;

__attribute__((used)) static inline int next_slot(struct b43_dmaring *ring, int slot)
{
 B43_WARN_ON(!(slot >= -1 && slot <= ring->nr_slots - 1));
 if (slot == ring->nr_slots - 1)
  return 0;
 return slot + 1;
}
