
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transmit_ring {int lastRead; int lastWrite; } ;


 int TXLO_ENTRIES ;
 int typhoon_num_free (int ,int ,int ) ;

__attribute__((used)) static inline int
typhoon_num_free_tx(struct transmit_ring *ring)
{

 return typhoon_num_free(ring->lastWrite, ring->lastRead, TXLO_ENTRIES);
}
