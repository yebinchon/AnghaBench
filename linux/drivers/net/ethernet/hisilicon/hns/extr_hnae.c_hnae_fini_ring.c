
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae_ring {scalar_t__ next_to_use; scalar_t__ next_to_clean; int * desc_cb; } ;


 int hnae_free_buffers (struct hnae_ring*) ;
 int hnae_free_desc (struct hnae_ring*) ;
 scalar_t__ is_rx_ring (struct hnae_ring*) ;
 int kfree (int *) ;

__attribute__((used)) static void hnae_fini_ring(struct hnae_ring *ring)
{
 if (is_rx_ring(ring))
  hnae_free_buffers(ring);

 hnae_free_desc(ring);
 kfree(ring->desc_cb);
 ring->desc_cb = ((void*)0);
 ring->next_to_clean = 0;
 ring->next_to_use = 0;
}
