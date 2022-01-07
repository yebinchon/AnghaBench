
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hns3_enet_ring {TYPE_2__* desc_cb; TYPE_1__* desc; } ;
struct TYPE_4__ {int dma; } ;
struct TYPE_3__ {int addr; } ;


 int cpu_to_le64 (int ) ;
 int hns3_reserve_buffer_map (struct hns3_enet_ring*,TYPE_2__*) ;

__attribute__((used)) static int hns3_alloc_buffer_attach(struct hns3_enet_ring *ring, int i)
{
 int ret = hns3_reserve_buffer_map(ring, &ring->desc_cb[i]);

 if (ret)
  return ret;

 ring->desc[i].addr = cpu_to_le64(ring->desc_cb[i].dma);

 return 0;
}
