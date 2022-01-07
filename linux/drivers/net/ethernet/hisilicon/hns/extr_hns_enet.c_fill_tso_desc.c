
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae_ring {int dummy; } ;
typedef enum hns_desc_type { ____Placeholder_hns_desc_type } hns_desc_type ;
typedef scalar_t__ dma_addr_t ;


 int BD_MAX_SEND_SIZE ;
 int DESC_TYPE_PAGE ;
 int DESC_TYPE_SKB ;
 int fill_v2_desc_hw (struct hnae_ring*,void*,int,int,scalar_t__,int,int,int,int) ;

__attribute__((used)) static void fill_tso_desc(struct hnae_ring *ring, void *priv,
     int size, dma_addr_t dma, int frag_end,
     int buf_num, enum hns_desc_type type, int mtu)
{
 int frag_buf_num;
 int sizeoflast;
 int k;

 frag_buf_num = (size + BD_MAX_SEND_SIZE - 1) / BD_MAX_SEND_SIZE;
 sizeoflast = size % BD_MAX_SEND_SIZE;
 sizeoflast = sizeoflast ? sizeoflast : BD_MAX_SEND_SIZE;


 for (k = 0; k < frag_buf_num; k++)
  fill_v2_desc_hw(ring, priv, k == 0 ? size : 0,
    (k == frag_buf_num - 1) ?
     sizeoflast : BD_MAX_SEND_SIZE,
    dma + BD_MAX_SEND_SIZE * k,
    frag_end && (k == frag_buf_num - 1) ? 1 : 0,
    buf_num,
    (type == DESC_TYPE_SKB && !k) ?
     DESC_TYPE_SKB : DESC_TYPE_PAGE,
    mtu);
}
