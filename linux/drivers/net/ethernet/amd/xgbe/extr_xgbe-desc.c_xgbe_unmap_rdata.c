
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ error; scalar_t__ len; int * skb; } ;
struct TYPE_13__ {scalar_t__ pages; scalar_t__ pages_len; scalar_t__ pages_dma; } ;
struct TYPE_12__ {scalar_t__ pages; } ;
struct TYPE_14__ {TYPE_5__ pa_unmap; TYPE_4__ pa; } ;
struct TYPE_10__ {scalar_t__ pages; scalar_t__ pages_len; scalar_t__ pages_dma; } ;
struct TYPE_9__ {scalar_t__ pages; } ;
struct TYPE_11__ {TYPE_2__ pa_unmap; TYPE_1__ pa; } ;
struct TYPE_16__ {TYPE_6__ buf; TYPE_3__ hdr; } ;
struct xgbe_ring_data {TYPE_7__ state; scalar_t__ state_saved; scalar_t__ mapped_as_page; TYPE_8__ rx; TYPE_8__ tx; int * skb; scalar_t__ skb_dma_len; scalar_t__ skb_dma; } ;
struct xgbe_prv_data {int dev; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int dev_kfree_skb_any (int *) ;
 int dma_unmap_page (int ,scalar_t__,scalar_t__,int ) ;
 int dma_unmap_single (int ,scalar_t__,scalar_t__,int ) ;
 int memset (TYPE_8__*,int ,int) ;
 int put_page (scalar_t__) ;

__attribute__((used)) static void xgbe_unmap_rdata(struct xgbe_prv_data *pdata,
        struct xgbe_ring_data *rdata)
{
 if (rdata->skb_dma) {
  if (rdata->mapped_as_page) {
   dma_unmap_page(pdata->dev, rdata->skb_dma,
           rdata->skb_dma_len, DMA_TO_DEVICE);
  } else {
   dma_unmap_single(pdata->dev, rdata->skb_dma,
      rdata->skb_dma_len, DMA_TO_DEVICE);
  }
  rdata->skb_dma = 0;
  rdata->skb_dma_len = 0;
 }

 if (rdata->skb) {
  dev_kfree_skb_any(rdata->skb);
  rdata->skb = ((void*)0);
 }

 if (rdata->rx.hdr.pa.pages)
  put_page(rdata->rx.hdr.pa.pages);

 if (rdata->rx.hdr.pa_unmap.pages) {
  dma_unmap_page(pdata->dev, rdata->rx.hdr.pa_unmap.pages_dma,
          rdata->rx.hdr.pa_unmap.pages_len,
          DMA_FROM_DEVICE);
  put_page(rdata->rx.hdr.pa_unmap.pages);
 }

 if (rdata->rx.buf.pa.pages)
  put_page(rdata->rx.buf.pa.pages);

 if (rdata->rx.buf.pa_unmap.pages) {
  dma_unmap_page(pdata->dev, rdata->rx.buf.pa_unmap.pages_dma,
          rdata->rx.buf.pa_unmap.pages_len,
          DMA_FROM_DEVICE);
  put_page(rdata->rx.buf.pa_unmap.pages);
 }

 memset(&rdata->tx, 0, sizeof(rdata->tx));
 memset(&rdata->rx, 0, sizeof(rdata->rx));

 rdata->mapped_as_page = 0;

 if (rdata->state_saved) {
  rdata->state_saved = 0;
  rdata->state.skb = ((void*)0);
  rdata->state.len = 0;
  rdata->state.error = 0;
 }
}
