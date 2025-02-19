
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct rx_return_desc {size_t buf_indx; } ;
struct atl1_rfd_ring {size_t next_to_clean; size_t count; TYPE_1__* buffer_info; } ;
struct atl1_adapter {struct atl1_rfd_ring rfd_ring; } ;
struct TYPE_2__ {scalar_t__ alloced; } ;



__attribute__((used)) static void atl1_clean_alloc_flag(struct atl1_adapter *adapter,
 struct rx_return_desc *rrd, u16 offset)
{
 struct atl1_rfd_ring *rfd_ring = &adapter->rfd_ring;

 while (rfd_ring->next_to_clean != (rrd->buf_indx + offset)) {
  rfd_ring->buffer_info[rfd_ring->next_to_clean].alloced = 0;
  if (++rfd_ring->next_to_clean == rfd_ring->count) {
   rfd_ring->next_to_clean = 0;
  }
 }
}
