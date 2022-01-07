
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hns3_enet_ring {TYPE_1__* desc; int * desc_cb; } ;
struct TYPE_2__ {scalar_t__ addr; } ;


 int hns3_unmap_buffer (struct hns3_enet_ring*,int *) ;

__attribute__((used)) static void hns3_buffer_detach(struct hns3_enet_ring *ring, int i)
{
 hns3_unmap_buffer(ring, &ring->desc_cb[i]);
 ring->desc[i].addr = 0;
}
