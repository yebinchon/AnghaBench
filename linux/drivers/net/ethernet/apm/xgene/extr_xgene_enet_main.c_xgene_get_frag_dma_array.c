
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgene_enet_desc_ring {size_t tail; TYPE_1__* cp_ring; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int * frag_dma_addr; } ;


 size_t MAX_SKB_FRAGS ;

__attribute__((used)) static dma_addr_t *xgene_get_frag_dma_array(struct xgene_enet_desc_ring *ring)
{
 return &ring->cp_ring->frag_dma_addr[ring->tail * MAX_SKB_FRAGS];
}
