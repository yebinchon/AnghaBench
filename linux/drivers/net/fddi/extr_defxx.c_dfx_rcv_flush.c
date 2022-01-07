
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_7__ {int ** p_rcv_buff_va; TYPE_2__* descr_block_virt; int bus_dev; scalar_t__ rcv_bufs_to_post; } ;
struct TYPE_6__ {TYPE_1__* rcv_data; } ;
struct TYPE_5__ {int long_1; } ;
typedef TYPE_3__ DFX_board_t ;


 int DMA_FROM_DEVICE ;
 scalar_t__ PI_RCV_DATA_K_NUM_ENTRIES ;
 int PI_RCV_DATA_K_SIZE_MAX ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dma_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static void dfx_rcv_flush( DFX_board_t *bp )
 {
 int i, j;

 for (i = 0; i < (int)(bp->rcv_bufs_to_post); i++)
  for (j = 0; (i + j) < (int)PI_RCV_DATA_K_NUM_ENTRIES; j += bp->rcv_bufs_to_post)
  {
   struct sk_buff *skb;
   skb = (struct sk_buff *)bp->p_rcv_buff_va[i+j];
   if (skb) {
    dma_unmap_single(bp->bus_dev,
       bp->descr_block_virt->rcv_data[i+j].long_1,
       PI_RCV_DATA_K_SIZE_MAX,
       DMA_FROM_DEVICE);
    dev_kfree_skb(skb);
   }
   bp->p_rcv_buff_va[i+j] = ((void*)0);
  }

 }
