
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae_ring {int desc_num; } ;


 int hnae_alloc_buffer_attach (struct hnae_ring*,int) ;
 int hnae_free_buffer_detach (struct hnae_ring*,int) ;

__attribute__((used)) static int hnae_alloc_buffers(struct hnae_ring *ring)
{
 int i, j, ret;

 for (i = 0; i < ring->desc_num; i++) {
  ret = hnae_alloc_buffer_attach(ring, i);
  if (ret)
   goto out_buffer_fail;
 }

 return 0;

out_buffer_fail:
 for (j = i - 1; j >= 0; j--)
  hnae_free_buffer_detach(ring, j);
 return ret;
}
