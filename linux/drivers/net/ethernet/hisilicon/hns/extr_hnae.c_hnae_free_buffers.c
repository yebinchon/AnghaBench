
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae_ring {int desc_num; } ;


 int hnae_free_buffer_detach (struct hnae_ring*,int) ;

__attribute__((used)) static void hnae_free_buffers(struct hnae_ring *ring)
{
 int i;

 for (i = 0; i < ring->desc_num; i++)
  hnae_free_buffer_detach(ring, i);
}
