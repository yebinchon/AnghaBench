
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns3_enet_ring {int desc_num; int * desc; int desc_dma_addr; } ;


 int dma_free_coherent (int ,int,int *,int ) ;
 int hns3_free_buffers (struct hns3_enet_ring*) ;
 int ring_to_dev (struct hns3_enet_ring*) ;

__attribute__((used)) static void hns3_free_desc(struct hns3_enet_ring *ring)
{
 int size = ring->desc_num * sizeof(ring->desc[0]);

 hns3_free_buffers(ring);

 if (ring->desc) {
  dma_free_coherent(ring_to_dev(ring), size,
      ring->desc, ring->desc_dma_addr);
  ring->desc = ((void*)0);
 }
}
