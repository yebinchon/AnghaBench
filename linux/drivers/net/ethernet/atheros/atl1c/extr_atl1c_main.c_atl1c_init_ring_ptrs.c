
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atl1c_tpd_ring {int count; struct atl1c_buffer* buffer_info; int next_to_clean; scalar_t__ next_to_use; } ;
struct atl1c_rrd_ring {scalar_t__ next_to_clean; scalar_t__ next_to_use; } ;
struct atl1c_rfd_ring {int count; struct atl1c_buffer* buffer_info; scalar_t__ next_to_clean; scalar_t__ next_to_use; } ;
struct atl1c_buffer {int dummy; } ;
struct atl1c_adapter {struct atl1c_rrd_ring rrd_ring; struct atl1c_rfd_ring rfd_ring; struct atl1c_tpd_ring* tpd_ring; } ;


 int ATL1C_BUFFER_FREE ;
 int ATL1C_SET_BUFFER_STATE (struct atl1c_buffer*,int ) ;
 int AT_MAX_TRANSMIT_QUEUE ;
 int atomic_set (int *,int ) ;

__attribute__((used)) static void atl1c_init_ring_ptrs(struct atl1c_adapter *adapter)
{
 struct atl1c_tpd_ring *tpd_ring = adapter->tpd_ring;
 struct atl1c_rfd_ring *rfd_ring = &adapter->rfd_ring;
 struct atl1c_rrd_ring *rrd_ring = &adapter->rrd_ring;
 struct atl1c_buffer *buffer_info;
 int i, j;

 for (i = 0; i < AT_MAX_TRANSMIT_QUEUE; i++) {
  tpd_ring[i].next_to_use = 0;
  atomic_set(&tpd_ring[i].next_to_clean, 0);
  buffer_info = tpd_ring[i].buffer_info;
  for (j = 0; j < tpd_ring->count; j++)
   ATL1C_SET_BUFFER_STATE(&buffer_info[i],
     ATL1C_BUFFER_FREE);
 }
 rfd_ring->next_to_use = 0;
 rfd_ring->next_to_clean = 0;
 rrd_ring->next_to_use = 0;
 rrd_ring->next_to_clean = 0;
 for (j = 0; j < rfd_ring->count; j++) {
  buffer_info = &rfd_ring->buffer_info[j];
  ATL1C_SET_BUFFER_STATE(buffer_info, ATL1C_BUFFER_FREE);
 }
}
