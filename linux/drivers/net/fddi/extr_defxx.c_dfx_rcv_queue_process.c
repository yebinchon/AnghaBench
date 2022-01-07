
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ len; int protocol; scalar_t__ data; } ;
typedef int dma_addr_t ;
struct TYPE_20__ {int name; } ;
struct TYPE_16__ {scalar_t__ rcv_comp; int rcv_prod; } ;
struct TYPE_17__ {TYPE_5__ index; } ;
struct TYPE_19__ {char** p_rcv_buff_va; TYPE_6__ rcv_xmt_reg; int rcv_multicast_frames; int rcv_total_frames; int rcv_total_bytes; TYPE_9__* dev; int bus_dev; int rcv_discards; TYPE_4__* descr_block_virt; int rcv_length_errors; int rcv_frame_status_errors; int rcv_crc_errors; TYPE_1__* cons_block_virt; } ;
struct TYPE_13__ {scalar_t__ rcv_cons; } ;
struct TYPE_18__ {TYPE_2__ index; } ;
struct TYPE_15__ {TYPE_3__* rcv_data; } ;
struct TYPE_14__ {int long_1; } ;
struct TYPE_12__ {int xmt_rcv_data; } ;
typedef TYPE_7__ PI_TYPE_2_CONSUMER ;
typedef TYPE_8__ DFX_board_t ;


 int DMA_FROM_DEVICE ;
 int FDDI_K_LLC_LEN ;
 int FDDI_K_LLC_ZLEN ;
 int IN_RANGE (int,int ,int ) ;
 int NEW_SKB_SIZE ;
 int PI_FMC_DESCR_M_LEN ;
 int PI_FMC_DESCR_M_RCC_CRC ;
 int PI_FMC_DESCR_M_RCC_FLUSH ;
 int PI_FMC_DESCR_V_LEN ;
 int PI_RCV_DATA_K_SIZE_MAX ;
 int RCV_BUFF_K_DA ;
 int RCV_BUFF_K_DESCR ;
 int RCV_BUFF_K_PADDING ;
 int SKBUFF_RX_COPYBREAK ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dma_map_single (int ,scalar_t__,int ,int ) ;
 scalar_t__ dma_mapping_error (int ,int) ;
 int dma_sync_single_for_cpu (int ,int,int,int ) ;
 int dma_unmap_single (int ,int,int ,int ) ;
 int fddi_type_trans (struct sk_buff*,TYPE_9__*) ;
 int memcpy (int*,char*,int) ;
 int my_skb_align (struct sk_buff*,int) ;
 struct sk_buff* netdev_alloc_skb (TYPE_9__*,int) ;
 int netif_rx (struct sk_buff*) ;
 int printk (char*,int ) ;
 int skb_copy_to_linear_data (struct sk_buff*,char*,int ) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static void dfx_rcv_queue_process(
 DFX_board_t *bp
 )

 {
 PI_TYPE_2_CONSUMER *p_type_2_cons;
 char *p_buff;
 u32 descr, pkt_len;
 struct sk_buff *skb = ((void*)0);



 p_type_2_cons = (PI_TYPE_2_CONSUMER *)(&bp->cons_block_virt->xmt_rcv_data);
 while (bp->rcv_xmt_reg.index.rcv_comp != p_type_2_cons->index.rcv_cons)
  {

  dma_addr_t dma_addr;
  int entry;

  entry = bp->rcv_xmt_reg.index.rcv_comp;



  p_buff = bp->p_rcv_buff_va[entry];

  dma_addr = bp->descr_block_virt->rcv_data[entry].long_1;
  dma_sync_single_for_cpu(bp->bus_dev,
     dma_addr + RCV_BUFF_K_DESCR,
     sizeof(u32),
     DMA_FROM_DEVICE);
  memcpy(&descr, p_buff + RCV_BUFF_K_DESCR, sizeof(u32));

  if (descr & PI_FMC_DESCR_M_RCC_FLUSH)
   {
   if (descr & PI_FMC_DESCR_M_RCC_CRC)
    bp->rcv_crc_errors++;
   else
    bp->rcv_frame_status_errors++;
   }
  else
  {
   int rx_in_place = 0;



   pkt_len = (u32)((descr & PI_FMC_DESCR_M_LEN) >> PI_FMC_DESCR_V_LEN);
   pkt_len -= 4;
   if (!IN_RANGE(pkt_len, FDDI_K_LLC_ZLEN, FDDI_K_LLC_LEN))
    bp->rcv_length_errors++;
   else{
     skb = netdev_alloc_skb(bp->dev,
              pkt_len + 3);
    if (skb == ((void*)0))
     {
     printk("%s: Could not allocate receive buffer.  Dropping packet.\n", bp->dev->name);
     bp->rcv_discards++;
     break;
     }
    else {
     if (!rx_in_place) {

      dma_sync_single_for_cpu(
       bp->bus_dev,
       dma_addr +
       RCV_BUFF_K_PADDING,
       pkt_len + 3,
       DMA_FROM_DEVICE);

      skb_copy_to_linear_data(skb,
              p_buff + RCV_BUFF_K_PADDING,
              pkt_len + 3);
     }

     skb_reserve(skb,3);
     skb_put(skb, pkt_len);
     skb->protocol = fddi_type_trans(skb, bp->dev);
     bp->rcv_total_bytes += skb->len;
     netif_rx(skb);


     bp->rcv_total_frames++;
     if (*(p_buff + RCV_BUFF_K_DA) & 0x01)
      bp->rcv_multicast_frames++;
    }
   }
   }
  bp->rcv_xmt_reg.index.rcv_prod += 1;
  bp->rcv_xmt_reg.index.rcv_comp += 1;
  }
 }
