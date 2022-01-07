
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae_ring {int dummy; } ;


 int next_to_use ;
 int ring_ptr_move_bw (struct hnae_ring*,int ) ;

__attribute__((used)) static void unfill_desc(struct hnae_ring *ring)
{
 ring_ptr_move_bw(ring, next_to_use);
}
