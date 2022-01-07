
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns3_enet_ring {int desc_num; } ;


 int hns3_alloc_buffer_attach (struct hns3_enet_ring*,int) ;
 int hns3_free_buffer_detach (struct hns3_enet_ring*,int) ;

__attribute__((used)) static int hns3_alloc_ring_buffers(struct hns3_enet_ring *ring)
{
 int i, j, ret;

 for (i = 0; i < ring->desc_num; i++) {
  ret = hns3_alloc_buffer_attach(ring, i);
  if (ret)
   goto out_buffer_fail;
 }

 return 0;

out_buffer_fail:
 for (j = i - 1; j >= 0; j--)
  hns3_free_buffer_detach(ring, j);
 return ret;
}
