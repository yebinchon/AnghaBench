
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct velocity_rd_info {int skb_dma; TYPE_2__* skb; } ;
struct TYPE_4__ {int buf_sz; struct velocity_rd_info* info; struct rx_desc* ring; } ;
struct velocity_info {TYPE_1__ rx; int dev; int netdev; } ;
struct rx_desc {int size; scalar_t__ pa_high; int pa_low; int rdesc0; } ;
struct TYPE_5__ {scalar_t__ data; } ;


 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int RX_INTEN ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int dma_map_single (int ,scalar_t__,int ,int ) ;
 TYPE_2__* netdev_alloc_skb (int ,int ) ;
 int skb_reserve (TYPE_2__*,int) ;

__attribute__((used)) static int velocity_alloc_rx_buf(struct velocity_info *vptr, int idx)
{
 struct rx_desc *rd = &(vptr->rx.ring[idx]);
 struct velocity_rd_info *rd_info = &(vptr->rx.info[idx]);

 rd_info->skb = netdev_alloc_skb(vptr->netdev, vptr->rx.buf_sz + 64);
 if (rd_info->skb == ((void*)0))
  return -ENOMEM;





 skb_reserve(rd_info->skb,
   64 - ((unsigned long) rd_info->skb->data & 63));
 rd_info->skb_dma = dma_map_single(vptr->dev, rd_info->skb->data,
     vptr->rx.buf_sz, DMA_FROM_DEVICE);





 *((u32 *) & (rd->rdesc0)) = 0;
 rd->size = cpu_to_le16(vptr->rx.buf_sz) | RX_INTEN;
 rd->pa_low = cpu_to_le32(rd_info->skb_dma);
 rd->pa_high = 0;
 return 0;
}
