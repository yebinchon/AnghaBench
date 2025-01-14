
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hns3_enet_ring {TYPE_2__* desc; struct hns3_desc_cb* desc_cb; } ;
struct hns3_desc_cb {int dma; } ;
struct TYPE_3__ {scalar_t__ bd_base_info; } ;
struct TYPE_4__ {TYPE_1__ rx; int addr; } ;


 int cpu_to_le64 (int ) ;
 int hns3_unmap_buffer (struct hns3_enet_ring*,struct hns3_desc_cb*) ;

__attribute__((used)) static void hns3_replace_buffer(struct hns3_enet_ring *ring, int i,
    struct hns3_desc_cb *res_cb)
{
 hns3_unmap_buffer(ring, &ring->desc_cb[i]);
 ring->desc_cb[i] = *res_cb;
 ring->desc[i].addr = cpu_to_le64(ring->desc_cb[i].dma);
 ring->desc[i].rx.bd_base_info = 0;
}
