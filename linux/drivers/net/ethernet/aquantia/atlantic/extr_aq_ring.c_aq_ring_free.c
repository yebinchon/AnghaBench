
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aq_ring_s {int size; int dx_size; int dx_ring_pa; scalar_t__ dx_ring; int aq_nic; int buff_ring; } ;


 int aq_nic_get_dev (int ) ;
 int dma_free_coherent (int ,int,scalar_t__,int ) ;
 int kfree (int ) ;

void aq_ring_free(struct aq_ring_s *self)
{
 if (!self)
  goto err_exit;

 kfree(self->buff_ring);

 if (self->dx_ring)
  dma_free_coherent(aq_nic_get_dev(self->aq_nic),
      self->size * self->dx_size, self->dx_ring,
      self->dx_ring_pa);

err_exit:;
}
