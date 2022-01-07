
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int pages_offset; int pages; } ;
struct TYPE_5__ {TYPE_1__ pa; int dma_len; int dma_off; int dma_base; } ;
struct TYPE_6__ {TYPE_2__ hdr; } ;
struct xgbe_ring_data {TYPE_3__ rx; } ;
struct xgbe_prv_data {int dev; } ;
struct sk_buff {int dummy; } ;
struct napi_struct {int dummy; } ;


 int DMA_FROM_DEVICE ;
 int dma_sync_single_range_for_cpu (int ,int ,int ,int ,int ) ;
 struct sk_buff* napi_alloc_skb (struct napi_struct*,int ) ;
 int * page_address (int ) ;
 int skb_copy_to_linear_data (struct sk_buff*,int *,unsigned int) ;
 int skb_put (struct sk_buff*,unsigned int) ;

__attribute__((used)) static struct sk_buff *xgbe_create_skb(struct xgbe_prv_data *pdata,
           struct napi_struct *napi,
           struct xgbe_ring_data *rdata,
           unsigned int len)
{
 struct sk_buff *skb;
 u8 *packet;

 skb = napi_alloc_skb(napi, rdata->rx.hdr.dma_len);
 if (!skb)
  return ((void*)0);




 dma_sync_single_range_for_cpu(pdata->dev, rdata->rx.hdr.dma_base,
          rdata->rx.hdr.dma_off,
          rdata->rx.hdr.dma_len, DMA_FROM_DEVICE);

 packet = page_address(rdata->rx.hdr.pa.pages) +
   rdata->rx.hdr.pa.pages_offset;
 skb_copy_to_linear_data(skb, packet, len);
 skb_put(skb, len);

 return skb;
}
