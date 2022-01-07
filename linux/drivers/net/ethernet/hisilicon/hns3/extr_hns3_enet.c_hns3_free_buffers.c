
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns3_enet_ring {int desc_num; } ;


 int hns3_free_buffer_detach (struct hns3_enet_ring*,int) ;

__attribute__((used)) static void hns3_free_buffers(struct hns3_enet_ring *ring)
{
 int i;

 for (i = 0; i < ring->desc_num; i++)
  hns3_free_buffer_detach(ring, i);
}
