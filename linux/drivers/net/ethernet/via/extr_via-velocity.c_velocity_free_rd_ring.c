
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct velocity_rd_info {int * skb; scalar_t__ skb_dma; } ;
struct TYPE_4__ {struct velocity_rd_info* info; int buf_sz; struct rx_desc* ring; } ;
struct TYPE_3__ {int numrx; } ;
struct velocity_info {TYPE_2__ rx; int dev; TYPE_1__ options; } ;
struct rx_desc {int dummy; } ;


 int DMA_FROM_DEVICE ;
 int dev_kfree_skb (int *) ;
 int dma_unmap_single (int ,scalar_t__,int ,int ) ;
 int kfree (struct velocity_rd_info*) ;
 int memset (struct rx_desc*,int ,int) ;

__attribute__((used)) static void velocity_free_rd_ring(struct velocity_info *vptr)
{
 int i;

 if (vptr->rx.info == ((void*)0))
  return;

 for (i = 0; i < vptr->options.numrx; i++) {
  struct velocity_rd_info *rd_info = &(vptr->rx.info[i]);
  struct rx_desc *rd = vptr->rx.ring + i;

  memset(rd, 0, sizeof(*rd));

  if (!rd_info->skb)
   continue;
  dma_unmap_single(vptr->dev, rd_info->skb_dma, vptr->rx.buf_sz,
     DMA_FROM_DEVICE);
  rd_info->skb_dma = 0;

  dev_kfree_skb(rd_info->skb);
  rd_info->skb = ((void*)0);
 }

 kfree(vptr->rx.info);
 vptr->rx.info = ((void*)0);
}
