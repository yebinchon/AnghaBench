
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct xlgmac_pdata {int dev; } ;
struct TYPE_9__ {int * pages; int pages_offset; } ;
struct TYPE_10__ {TYPE_3__ pa; int dma_len; int dma_off; int dma_base; } ;
struct TYPE_7__ {int pages_offset; int pages; } ;
struct TYPE_8__ {int dma_len; TYPE_1__ pa; int dma_off; int dma_base; } ;
struct TYPE_11__ {unsigned int hdr_len; TYPE_4__ buf; TYPE_2__ hdr; } ;
struct xlgmac_desc_data {TYPE_5__ rx; } ;
struct sk_buff {int dummy; } ;
struct napi_struct {int dummy; } ;
struct TYPE_12__ {int nr_frags; } ;


 int DMA_FROM_DEVICE ;
 int dma_sync_single_range_for_cpu (int ,int ,int ,int ,int ) ;
 unsigned int min (int ,unsigned int) ;
 struct sk_buff* napi_alloc_skb (struct napi_struct*,int ) ;
 int * page_address (int ) ;
 int skb_add_rx_frag (struct sk_buff*,int ,int *,int ,unsigned int,int ) ;
 int skb_copy_to_linear_data (struct sk_buff*,int *,unsigned int) ;
 int skb_put (struct sk_buff*,unsigned int) ;
 TYPE_6__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *xlgmac_create_skb(struct xlgmac_pdata *pdata,
      struct napi_struct *napi,
      struct xlgmac_desc_data *desc_data,
      unsigned int len)
{
 unsigned int copy_len;
 struct sk_buff *skb;
 u8 *packet;

 skb = napi_alloc_skb(napi, desc_data->rx.hdr.dma_len);
 if (!skb)
  return ((void*)0);




 dma_sync_single_range_for_cpu(pdata->dev, desc_data->rx.hdr.dma_base,
          desc_data->rx.hdr.dma_off,
          desc_data->rx.hdr.dma_len,
          DMA_FROM_DEVICE);

 packet = page_address(desc_data->rx.hdr.pa.pages) +
   desc_data->rx.hdr.pa.pages_offset;
 copy_len = (desc_data->rx.hdr_len) ? desc_data->rx.hdr_len : len;
 copy_len = min(desc_data->rx.hdr.dma_len, copy_len);
 skb_copy_to_linear_data(skb, packet, copy_len);
 skb_put(skb, copy_len);

 len -= copy_len;
 if (len) {

  dma_sync_single_range_for_cpu(pdata->dev,
           desc_data->rx.buf.dma_base,
           desc_data->rx.buf.dma_off,
           desc_data->rx.buf.dma_len,
           DMA_FROM_DEVICE);

  skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags,
    desc_data->rx.buf.pa.pages,
    desc_data->rx.buf.pa.pages_offset,
    len, desc_data->rx.buf.dma_len);
  desc_data->rx.buf.pa.pages = ((void*)0);
 }

 return skb;
}
