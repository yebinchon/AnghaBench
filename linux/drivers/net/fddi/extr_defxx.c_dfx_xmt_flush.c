
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct TYPE_15__ {TYPE_9__* p_skb; } ;
typedef TYPE_6__ XMT_DRIVER_DESCR ;
struct TYPE_17__ {int len; } ;
struct TYPE_12__ {size_t xmt_comp; size_t xmt_prod; } ;
struct TYPE_13__ {TYPE_3__ index; } ;
struct TYPE_16__ {TYPE_5__* cons_block_virt; TYPE_4__ rcv_xmt_reg; int xmt_discards; TYPE_2__* descr_block_virt; int bus_dev; TYPE_6__* xmt_drv_descr_blk; } ;
struct TYPE_14__ {int xmt_rcv_data; } ;
struct TYPE_11__ {TYPE_1__* xmt_data; } ;
struct TYPE_10__ {int long_1; } ;
typedef TYPE_7__ DFX_board_t ;


 int DMA_TO_DEVICE ;
 int PI_CONS_M_XMT_INDEX ;
 int PI_CONS_V_XMT_INDEX ;
 int dev_kfree_skb (TYPE_9__*) ;
 int dma_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static void dfx_xmt_flush( DFX_board_t *bp )
 {
 u32 prod_cons;
 XMT_DRIVER_DESCR *p_xmt_drv_descr;
 u8 comp;



 while (bp->rcv_xmt_reg.index.xmt_comp != bp->rcv_xmt_reg.index.xmt_prod)
  {


  p_xmt_drv_descr = &(bp->xmt_drv_descr_blk[bp->rcv_xmt_reg.index.xmt_comp]);


  comp = bp->rcv_xmt_reg.index.xmt_comp;
  dma_unmap_single(bp->bus_dev,
     bp->descr_block_virt->xmt_data[comp].long_1,
     p_xmt_drv_descr->p_skb->len,
     DMA_TO_DEVICE);
  dev_kfree_skb(p_xmt_drv_descr->p_skb);



  bp->xmt_discards++;
  bp->rcv_xmt_reg.index.xmt_comp += 1;
  }



 prod_cons = (u32)(bp->cons_block_virt->xmt_rcv_data & ~PI_CONS_M_XMT_INDEX);
 prod_cons |= (u32)(bp->rcv_xmt_reg.index.xmt_prod << PI_CONS_V_XMT_INDEX);
 bp->cons_block_virt->xmt_rcv_data = prod_cons;
 }
