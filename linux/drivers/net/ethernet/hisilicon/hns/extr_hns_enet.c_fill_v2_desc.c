
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae_ring {int dummy; } ;
typedef enum hns_desc_type { ____Placeholder_hns_desc_type } hns_desc_type ;
typedef int dma_addr_t ;


 int fill_v2_desc_hw (struct hnae_ring*,void*,int,int,int ,int,int,int,int) ;

__attribute__((used)) static void fill_v2_desc(struct hnae_ring *ring, void *priv,
    int size, dma_addr_t dma, int frag_end,
    int buf_num, enum hns_desc_type type, int mtu)
{
 fill_v2_desc_hw(ring, priv, size, size, dma, frag_end,
   buf_num, type, mtu);
}
