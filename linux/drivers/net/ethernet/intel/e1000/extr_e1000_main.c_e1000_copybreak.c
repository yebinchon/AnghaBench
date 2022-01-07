
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct e1000_rx_buffer {int dma; } ;
struct e1000_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int copybreak ;
 int dma_sync_single_for_cpu (int *,int ,int ,int ) ;
 struct sk_buff* e1000_alloc_rx_skb (struct e1000_adapter*,int ) ;
 int skb_put_data (struct sk_buff*,void const*,int ) ;

__attribute__((used)) static struct sk_buff *e1000_copybreak(struct e1000_adapter *adapter,
           struct e1000_rx_buffer *buffer_info,
           u32 length, const void *data)
{
 struct sk_buff *skb;

 if (length > copybreak)
  return ((void*)0);

 skb = e1000_alloc_rx_skb(adapter, length);
 if (!skb)
  return ((void*)0);

 dma_sync_single_for_cpu(&adapter->pdev->dev, buffer_info->dma,
    length, DMA_FROM_DEVICE);

 skb_put_data(skb, data, length);

 return skb;
}
