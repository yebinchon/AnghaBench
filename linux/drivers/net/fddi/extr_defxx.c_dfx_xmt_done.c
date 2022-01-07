
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef size_t u8 ;
struct TYPE_19__ {TYPE_11__* p_skb; } ;
typedef TYPE_7__ XMT_DRIVER_DESCR ;
struct TYPE_17__ {scalar_t__ xmt_comp; } ;
struct TYPE_18__ {TYPE_5__ index; } ;
struct TYPE_21__ {TYPE_6__ rcv_xmt_reg; TYPE_4__* descr_block_virt; int bus_dev; int xmt_total_bytes; int xmt_total_frames; TYPE_7__* xmt_drv_descr_blk; TYPE_1__* cons_block_virt; } ;
struct TYPE_14__ {scalar_t__ xmt_cons; } ;
struct TYPE_20__ {TYPE_2__ index; } ;
struct TYPE_16__ {TYPE_3__* xmt_data; } ;
struct TYPE_15__ {int long_1; } ;
struct TYPE_13__ {int xmt_rcv_data; } ;
struct TYPE_12__ {scalar_t__ len; } ;
typedef TYPE_8__ PI_TYPE_2_CONSUMER ;
typedef TYPE_9__ DFX_board_t ;


 int DMA_TO_DEVICE ;
 int dev_consume_skb_irq (TYPE_11__*) ;
 int dma_unmap_single (int ,int ,scalar_t__,int ) ;

__attribute__((used)) static int dfx_xmt_done(DFX_board_t *bp)
 {
 XMT_DRIVER_DESCR *p_xmt_drv_descr;
 PI_TYPE_2_CONSUMER *p_type_2_cons;
 u8 comp;
 int freed = 0;



 p_type_2_cons = (PI_TYPE_2_CONSUMER *)(&bp->cons_block_virt->xmt_rcv_data);
 while (bp->rcv_xmt_reg.index.xmt_comp != p_type_2_cons->index.xmt_cons)
  {


  p_xmt_drv_descr = &(bp->xmt_drv_descr_blk[bp->rcv_xmt_reg.index.xmt_comp]);



  bp->xmt_total_frames++;
  bp->xmt_total_bytes += p_xmt_drv_descr->p_skb->len;


  comp = bp->rcv_xmt_reg.index.xmt_comp;
  dma_unmap_single(bp->bus_dev,
     bp->descr_block_virt->xmt_data[comp].long_1,
     p_xmt_drv_descr->p_skb->len,
     DMA_TO_DEVICE);
  dev_consume_skb_irq(p_xmt_drv_descr->p_skb);
  bp->rcv_xmt_reg.index.xmt_comp += 1;
  freed++;
  }
 return freed;
 }
