
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aq_ring_s {size_t sw_head; size_t sw_tail; int aq_nic; struct aq_ring_buff_s* buff_ring; } ;
struct aq_ring_buff_s {int rxdata; } ;


 int aq_free_rxpage (int *,int ) ;
 int aq_nic_get_dev (int ) ;
 size_t aq_ring_next_dx (struct aq_ring_s*,size_t) ;

void aq_ring_rx_deinit(struct aq_ring_s *self)
{
 if (!self)
  goto err_exit;

 for (; self->sw_head != self->sw_tail;
  self->sw_head = aq_ring_next_dx(self, self->sw_head)) {
  struct aq_ring_buff_s *buff = &self->buff_ring[self->sw_head];

  aq_free_rxpage(&buff->rxdata, aq_nic_get_dev(self->aq_nic));
 }

err_exit:;
}
