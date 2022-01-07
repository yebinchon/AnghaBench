
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int * data; } ;
struct greth_private {int tx_free; int rx_bd_base_phys; TYPE_1__* regs; int tx_bd_base_phys; scalar_t__ tx_last; scalar_t__ tx_next; scalar_t__ rx_cur; int dev; int ** tx_bufs; int ** rx_bufs; struct sk_buff** rx_skbuff; int netdev; scalar_t__ gbit_mac; struct greth_bd* tx_bd_base; struct greth_bd* rx_bd_base; } ;
struct greth_bd {int stat; int addr; } ;
struct TYPE_2__ {int rx_desc_p; int tx_desc_p; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GRETH_BD_EN ;
 int GRETH_BD_IE ;
 int GRETH_BD_WR ;
 int GRETH_REGSAVE (int ,int ) ;
 int GRETH_RXBD_NUM ;
 int GRETH_TXBD_NUM ;
 scalar_t__ MAX_FRAME_SIZE ;
 scalar_t__ NET_IP_ALIGN ;
 int dev_err (int ,char*) ;
 int dma_map_single (int ,int *,scalar_t__,int ) ;
 scalar_t__ dma_mapping_error (int ,int) ;
 int greth_clean_rings (struct greth_private*) ;
 int greth_read_bd (int *) ;
 int greth_write_bd (int *,int) ;
 void* kmalloc (scalar_t__,int ) ;
 struct sk_buff* netdev_alloc_skb (int ,scalar_t__) ;
 scalar_t__ netif_msg_ifup (struct greth_private*) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static int greth_init_rings(struct greth_private *greth)
{
 struct sk_buff *skb;
 struct greth_bd *rx_bd, *tx_bd;
 u32 dma_addr;
 int i;

 rx_bd = greth->rx_bd_base;
 tx_bd = greth->tx_bd_base;


 if (greth->gbit_mac) {

  for (i = 0; i < GRETH_RXBD_NUM; i++) {
   skb = netdev_alloc_skb(greth->netdev, MAX_FRAME_SIZE+NET_IP_ALIGN);
   if (skb == ((void*)0)) {
    if (netif_msg_ifup(greth))
     dev_err(greth->dev, "Error allocating DMA ring.\n");
    goto cleanup;
   }
   skb_reserve(skb, NET_IP_ALIGN);
   dma_addr = dma_map_single(greth->dev,
        skb->data,
        MAX_FRAME_SIZE+NET_IP_ALIGN,
        DMA_FROM_DEVICE);

   if (dma_mapping_error(greth->dev, dma_addr)) {
    if (netif_msg_ifup(greth))
     dev_err(greth->dev, "Could not create initial DMA mapping\n");
    goto cleanup;
   }
   greth->rx_skbuff[i] = skb;
   greth_write_bd(&rx_bd[i].addr, dma_addr);
   greth_write_bd(&rx_bd[i].stat, GRETH_BD_EN | GRETH_BD_IE);
  }

 } else {


  for (i = 0; i < GRETH_RXBD_NUM; i++) {

   greth->rx_bufs[i] = kmalloc(MAX_FRAME_SIZE, GFP_KERNEL);

   if (greth->rx_bufs[i] == ((void*)0)) {
    if (netif_msg_ifup(greth))
     dev_err(greth->dev, "Error allocating DMA ring.\n");
    goto cleanup;
   }

   dma_addr = dma_map_single(greth->dev,
        greth->rx_bufs[i],
        MAX_FRAME_SIZE,
        DMA_FROM_DEVICE);

   if (dma_mapping_error(greth->dev, dma_addr)) {
    if (netif_msg_ifup(greth))
     dev_err(greth->dev, "Could not create initial DMA mapping\n");
    goto cleanup;
   }
   greth_write_bd(&rx_bd[i].addr, dma_addr);
   greth_write_bd(&rx_bd[i].stat, GRETH_BD_EN | GRETH_BD_IE);
  }
  for (i = 0; i < GRETH_TXBD_NUM; i++) {

   greth->tx_bufs[i] = kmalloc(MAX_FRAME_SIZE, GFP_KERNEL);

   if (greth->tx_bufs[i] == ((void*)0)) {
    if (netif_msg_ifup(greth))
     dev_err(greth->dev, "Error allocating DMA ring.\n");
    goto cleanup;
   }

   dma_addr = dma_map_single(greth->dev,
        greth->tx_bufs[i],
        MAX_FRAME_SIZE,
        DMA_TO_DEVICE);

   if (dma_mapping_error(greth->dev, dma_addr)) {
    if (netif_msg_ifup(greth))
     dev_err(greth->dev, "Could not create initial DMA mapping\n");
    goto cleanup;
   }
   greth_write_bd(&tx_bd[i].addr, dma_addr);
   greth_write_bd(&tx_bd[i].stat, 0);
  }
 }
 greth_write_bd(&rx_bd[GRETH_RXBD_NUM - 1].stat,
         greth_read_bd(&rx_bd[GRETH_RXBD_NUM - 1].stat) | GRETH_BD_WR);


 greth->rx_cur = 0;
 greth->tx_next = 0;
 greth->tx_last = 0;
 greth->tx_free = GRETH_TXBD_NUM;


 GRETH_REGSAVE(greth->regs->tx_desc_p, greth->tx_bd_base_phys);
 GRETH_REGSAVE(greth->regs->rx_desc_p, greth->rx_bd_base_phys);

 return 0;

cleanup:
 greth_clean_rings(greth);
 return -ENOMEM;
}
