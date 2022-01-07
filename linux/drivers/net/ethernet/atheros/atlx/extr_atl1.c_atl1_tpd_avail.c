
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct atl1_tpd_ring {scalar_t__ count; int next_to_use; int next_to_clean; } ;


 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static u16 atl1_tpd_avail(struct atl1_tpd_ring *tpd_ring)
{
 u16 next_to_clean = atomic_read(&tpd_ring->next_to_clean);
 u16 next_to_use = atomic_read(&tpd_ring->next_to_use);
 return (next_to_clean > next_to_use) ?
  next_to_clean - next_to_use - 1 :
  tpd_ring->count + next_to_clean - next_to_use - 1;
}
