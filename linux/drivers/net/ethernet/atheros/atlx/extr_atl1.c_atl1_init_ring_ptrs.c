
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atl1_tpd_ring {int next_to_clean; int next_to_use; } ;
struct atl1_rrd_ring {int next_to_clean; scalar_t__ next_to_use; } ;
struct atl1_rfd_ring {int next_to_use; scalar_t__ next_to_clean; } ;
struct atl1_adapter {struct atl1_rrd_ring rrd_ring; struct atl1_rfd_ring rfd_ring; struct atl1_tpd_ring tpd_ring; } ;


 int atomic_set (int *,int ) ;

__attribute__((used)) static void atl1_init_ring_ptrs(struct atl1_adapter *adapter)
{
 struct atl1_tpd_ring *tpd_ring = &adapter->tpd_ring;
 struct atl1_rfd_ring *rfd_ring = &adapter->rfd_ring;
 struct atl1_rrd_ring *rrd_ring = &adapter->rrd_ring;

 atomic_set(&tpd_ring->next_to_use, 0);
 atomic_set(&tpd_ring->next_to_clean, 0);

 rfd_ring->next_to_clean = 0;
 atomic_set(&rfd_ring->next_to_use, 0);

 rrd_ring->next_to_use = 0;
 atomic_set(&rrd_ring->next_to_clean, 0);
}
