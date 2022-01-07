
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclgevf_desc {int dummy; } ;
struct hclgevf_cmq_ring {int desc_num; int desc; int desc_dma_addr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int cmq_ring_to_dev (struct hclgevf_cmq_ring*) ;
 int dma_alloc_coherent (int ,int,int *,int ) ;

__attribute__((used)) static int hclgevf_alloc_cmd_desc(struct hclgevf_cmq_ring *ring)
{
 int size = ring->desc_num * sizeof(struct hclgevf_desc);

 ring->desc = dma_alloc_coherent(cmq_ring_to_dev(ring), size,
     &ring->desc_dma_addr, GFP_KERNEL);
 if (!ring->desc)
  return -ENOMEM;

 return 0;
}
