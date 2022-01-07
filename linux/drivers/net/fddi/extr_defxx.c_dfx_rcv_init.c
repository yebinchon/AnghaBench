
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* u32 ;
struct sk_buff {int data; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_10__ {scalar_t__ rcv_prod; } ;
struct TYPE_11__ {int lword; TYPE_3__ index; } ;
struct TYPE_12__ {char** p_rcv_buff_va; char* rcv_block_virt; TYPE_4__ rcv_xmt_reg; scalar_t__ rcv_bufs_to_post; scalar_t__ rcv_block_phys; TYPE_2__* descr_block_virt; int bus_dev; int dev; } ;
struct TYPE_9__ {TYPE_1__* rcv_data; } ;
struct TYPE_8__ {void* long_1; void* long_0; } ;
typedef TYPE_5__ DFX_board_t ;


 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int GFP_NOIO ;
 int NEW_SKB_SIZE ;
 int PI_ALIGN_K_RCV_DATA_BUFF ;
 int PI_PDQ_K_REG_TYPE_2_PROD ;
 scalar_t__ PI_RCV_DATA_K_NUM_ENTRIES ;
 int PI_RCV_DATA_K_SIZE_MAX ;
 int PI_RCV_DESCR_M_SOP ;
 int PI_RCV_DESCR_V_SEG_LEN ;
 struct sk_buff* __netdev_alloc_skb (int ,int ,int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dfx_port_write_long (TYPE_5__*,int ,int ) ;
 scalar_t__ dma_map_single (int ,int ,int,int ) ;
 scalar_t__ dma_mapping_error (int ,scalar_t__) ;
 int my_skb_align (struct sk_buff*,int) ;

__attribute__((used)) static int dfx_rcv_init(DFX_board_t *bp, int get_buffers)
 {
 int i, j;
 if (get_buffers) {
 for (i=0; i < (int)(bp->rcv_bufs_to_post); i++)
  for (j=0; (i + j) < (int)PI_RCV_DATA_K_NUM_ENTRIES; j += bp->rcv_bufs_to_post)
   {
   bp->descr_block_virt->rcv_data[i+j].long_0 = (u32) (PI_RCV_DESCR_M_SOP |
    ((PI_RCV_DATA_K_SIZE_MAX / PI_ALIGN_K_RCV_DATA_BUFF) << PI_RCV_DESCR_V_SEG_LEN));
   bp->descr_block_virt->rcv_data[i+j].long_1 = (u32) (bp->rcv_block_phys + (i * PI_RCV_DATA_K_SIZE_MAX));
   bp->p_rcv_buff_va[i+j] = (bp->rcv_block_virt + (i * PI_RCV_DATA_K_SIZE_MAX));
   }

 }



 bp->rcv_xmt_reg.index.rcv_prod = bp->rcv_bufs_to_post;
 dfx_port_write_long(bp, PI_PDQ_K_REG_TYPE_2_PROD, bp->rcv_xmt_reg.lword);
 return 0;
 }
