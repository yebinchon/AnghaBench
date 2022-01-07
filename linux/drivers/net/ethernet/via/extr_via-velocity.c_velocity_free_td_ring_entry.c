
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct velocity_td_info {int nskb_dma; TYPE_2__* skb; scalar_t__* skb_dma; } ;
struct TYPE_3__ {struct velocity_td_info** infos; } ;
struct velocity_info {int dev; TYPE_1__ tx; } ;
struct TYPE_4__ {int len; } ;


 int DMA_TO_DEVICE ;
 int dev_kfree_skb (TYPE_2__*) ;
 int dma_unmap_single (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static void velocity_free_td_ring_entry(struct velocity_info *vptr,
        int q, int n)
{
 struct velocity_td_info *td_info = &(vptr->tx.infos[q][n]);
 int i;

 if (td_info == ((void*)0))
  return;

 if (td_info->skb) {
  for (i = 0; i < td_info->nskb_dma; i++) {
   if (td_info->skb_dma[i]) {
    dma_unmap_single(vptr->dev, td_info->skb_dma[i],
     td_info->skb->len, DMA_TO_DEVICE);
    td_info->skb_dma[i] = 0;
   }
  }
  dev_kfree_skb(td_info->skb);
  td_info->skb = ((void*)0);
 }
}
