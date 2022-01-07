
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buf; int hdr; } ;
struct xgbe_ring_data {TYPE_1__ rx; } ;
struct TYPE_5__ {int pages; } ;
struct xgbe_ring {TYPE_2__ rx_buf_pa; TYPE_2__ rx_hdr_pa; int node; } ;
struct xgbe_prv_data {int rx_buf_size; } ;


 int PAGE_ALLOC_COSTLY_ORDER ;
 int XGBE_SKB_ALLOC_SIZE ;
 int xgbe_alloc_pages (struct xgbe_prv_data*,TYPE_2__*,int ,int ) ;
 int xgbe_set_buffer_data (int *,TYPE_2__*,int ) ;

__attribute__((used)) static int xgbe_map_rx_buffer(struct xgbe_prv_data *pdata,
         struct xgbe_ring *ring,
         struct xgbe_ring_data *rdata)
{
 int ret;

 if (!ring->rx_hdr_pa.pages) {
  ret = xgbe_alloc_pages(pdata, &ring->rx_hdr_pa, 0, ring->node);
  if (ret)
   return ret;
 }

 if (!ring->rx_buf_pa.pages) {
  ret = xgbe_alloc_pages(pdata, &ring->rx_buf_pa,
           PAGE_ALLOC_COSTLY_ORDER, ring->node);
  if (ret)
   return ret;
 }


 xgbe_set_buffer_data(&rdata->rx.hdr, &ring->rx_hdr_pa,
        XGBE_SKB_ALLOC_SIZE);


 xgbe_set_buffer_data(&rdata->rx.buf, &ring->rx_buf_pa,
        pdata->rx_buf_size);

 return 0;
}
