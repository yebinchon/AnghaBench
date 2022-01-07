
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns3_enet_ring {struct hns3_desc_cb* desc_cb; } ;
struct hns3_desc_cb {int dma; } ;


 int hns3_buffer_detach (struct hns3_enet_ring*,int) ;
 int hns3_free_buffer (struct hns3_enet_ring*,struct hns3_desc_cb*) ;

__attribute__((used)) static void hns3_free_buffer_detach(struct hns3_enet_ring *ring, int i)
{
 struct hns3_desc_cb *cb = &ring->desc_cb[i];

 if (!ring->desc_cb[i].dma)
  return;

 hns3_buffer_detach(ring, i);
 hns3_free_buffer(ring, cb);
}
