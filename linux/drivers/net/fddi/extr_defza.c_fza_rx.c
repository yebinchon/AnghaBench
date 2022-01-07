
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {int protocol; scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct TYPE_7__ {int rx_bytes; int rx_dropped; int multicast; int rx_packets; } ;
struct fza_private {int ring_hst_rx_index; int* rx_dma; int ring_hst_rx_size; TYPE_4__* ring_hst_rx; int name; TYPE_3__ stats; struct sk_buff** rx_skbuff; TYPE_1__* regs; int bdev; } ;
struct TYPE_6__ {int fc; int* daddr; } ;
struct fza_fddihdr {TYPE_2__ hdr; } ;
struct fza_buffer_tx {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_8__ {int buf0_own; int buffer1; int rmc; } ;
struct TYPE_5__ {int control_a; } ;


 int DMA_FROM_DEVICE ;
 int FDDI_FC_K_CLASS_ASYNC ;
 int FDDI_FC_K_CLASS_MASK ;
 int FDDI_FC_K_FORMAT_MANAGEMENT ;
 int FDDI_FC_K_FORMAT_MASK ;
 int FZA_CONTROL_A_SMT_RX_OVFL ;
 int FZA_RING_OWN_FZA ;
 int FZA_RING_OWN_MASK ;
 int FZA_RING_PBC_MASK ;
 int FZA_RING_RX_DA_MASK ;
 int FZA_RING_RX_DA_PROM ;
 scalar_t__ FZA_RX_BUFFER_SIZE ;
 int NET_RX_DROP ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 int dma_map_single (int ,scalar_t__,scalar_t__,int ) ;
 scalar_t__ dma_mapping_error (int ,int) ;
 int dma_rmb () ;
 int dma_sync_single_for_cpu (int ,int,int,int ) ;
 int dma_unmap_single (int ,int,scalar_t__,int ) ;
 int fddi_type_trans (struct sk_buff*,struct net_device*) ;
 struct sk_buff* fza_alloc_skb_irq (struct net_device*,scalar_t__) ;
 scalar_t__ fza_do_recv_smt (struct fza_buffer_tx*,int,int,struct net_device*) ;
 scalar_t__ fza_rx_err (struct fza_private*,int,int) ;
 int fza_skb_align (struct sk_buff*,int) ;
 struct fza_private* netdev_priv (struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 int pr_notice (char*,int ) ;
 int readl_o (int *) ;
 int readl_u (int *) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 int writel_o (int,int *) ;

__attribute__((used)) static void fza_rx(struct net_device *dev)
{
 struct fza_private *fp = netdev_priv(dev);
 struct sk_buff *skb, *newskb;
 struct fza_fddihdr *frame;
 dma_addr_t dma, newdma;
 u32 own, rmc, buf;
 int i, len;
 u8 fc;

 while (1) {
  i = fp->ring_hst_rx_index;
  own = readl_o(&fp->ring_hst_rx[i].buf0_own);
  if ((own & FZA_RING_OWN_MASK) == FZA_RING_OWN_FZA)
   break;

  rmc = readl_u(&fp->ring_hst_rx[i].rmc);
  skb = fp->rx_skbuff[i];
  dma = fp->rx_dma[i];




  dma_rmb();
  len = (rmc & FZA_RING_PBC_MASK) + 3;
  frame = (struct fza_fddihdr *)skb->data;


  dma_sync_single_for_cpu(fp->bdev,
     dma +
     ((u8 *)&frame->hdr.fc - (u8 *)frame),
     sizeof(frame->hdr.fc),
     DMA_FROM_DEVICE);
  fc = frame->hdr.fc;

  if (fza_rx_err(fp, rmc, fc))
   goto err_rx;


  newskb = fza_alloc_skb_irq(dev, FZA_RX_BUFFER_SIZE + 511);
  if (newskb) {
   fza_skb_align(newskb, 512);
   newdma = dma_map_single(fp->bdev, newskb->data,
      FZA_RX_BUFFER_SIZE,
      DMA_FROM_DEVICE);
   if (dma_mapping_error(fp->bdev, newdma)) {
    dev_kfree_skb_irq(newskb);
    newskb = ((void*)0);
   }
  }
  if (newskb) {
   int pkt_len = len - 7;
   int is_multi;
   int rx_stat;

   dma_unmap_single(fp->bdev, dma, FZA_RX_BUFFER_SIZE,
      DMA_FROM_DEVICE);


   if ((fc & (FDDI_FC_K_CLASS_MASK |
       FDDI_FC_K_FORMAT_MASK)) ==
        (FDDI_FC_K_CLASS_ASYNC |
         FDDI_FC_K_FORMAT_MANAGEMENT) &&
       (rmc & FZA_RING_RX_DA_MASK) !=
        FZA_RING_RX_DA_PROM) {
    if (fza_do_recv_smt((struct fza_buffer_tx *)
          skb->data, len, rmc,
          dev)) {
     writel_o(FZA_CONTROL_A_SMT_RX_OVFL,
       &fp->regs->control_a);
    }
   }

   is_multi = ((frame->hdr.daddr[0] & 0x01) != 0);

   skb_reserve(skb, 3);
   skb_put(skb, pkt_len);
   skb->protocol = fddi_type_trans(skb, dev);

   rx_stat = netif_rx(skb);
   if (rx_stat != NET_RX_DROP) {
    fp->stats.rx_packets++;
    fp->stats.rx_bytes += pkt_len;
    if (is_multi)
     fp->stats.multicast++;
   } else {
    fp->stats.rx_dropped++;
   }

   skb = newskb;
   dma = newdma;
   fp->rx_skbuff[i] = skb;
   fp->rx_dma[i] = dma;
  } else {
   fp->stats.rx_dropped++;
   pr_notice("%s: memory squeeze, dropping packet\n",
      fp->name);
  }

err_rx:
  writel_o(0, &fp->ring_hst_rx[i].rmc);
  buf = (dma + 0x1000) >> 9;
  writel_o(buf, &fp->ring_hst_rx[i].buffer1);
  buf = dma >> 9 | FZA_RING_OWN_FZA;
  writel_o(buf, &fp->ring_hst_rx[i].buf0_own);
  fp->ring_hst_rx_index =
   (fp->ring_hst_rx_index + 1) % fp->ring_hst_rx_size;
 }
}
