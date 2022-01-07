
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int data; } ;
struct TYPE_3__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct i596_rfd {void* cmd; void* b_next; struct i596_rfd* v_next; struct i596_rfd* v_prev; void* rbd; void* size; void* b_data; int v_data; struct sk_buff* skb; void* b_addr; } ;
struct i596_rbd {void* cmd; void* b_next; struct i596_rbd* v_next; struct i596_rbd* v_prev; void* rbd; void* size; void* b_data; int v_data; struct sk_buff* skb; void* b_addr; } ;
struct i596_private {struct i596_rfd* rbd_head; struct i596_rfd* rfd_head; struct i596_dma* dma; } ;
struct TYPE_4__ {void* rfd; } ;
struct i596_dma {struct i596_rfd* rfds; TYPE_2__ scb; struct i596_rfd* rbds; } ;
typedef int dma_addr_t ;


 int CMD_EOL ;
 int CMD_FLEX ;
 int DMA_FROM_DEVICE ;
 int DMA_WBACK_INV (struct net_device*,struct i596_dma*,int) ;
 void* I596_NULL ;
 int PKT_BUF_SZ ;
 void* SWAP16 (int) ;
 void* SWAP32 (int ) ;
 int dma_map_single (int ,int ,int,int ) ;
 struct sk_buff* netdev_alloc_skb_ip_align (struct net_device*,int) ;
 struct i596_private* netdev_priv (struct net_device*) ;
 int rx_ring_size ;
 int virt_to_dma (struct i596_private*,struct i596_rfd*) ;

__attribute__((used)) static inline int init_rx_bufs(struct net_device *dev)
{
 struct i596_private *lp = netdev_priv(dev);
 struct i596_dma *dma = lp->dma;
 int i;
 struct i596_rfd *rfd;
 struct i596_rbd *rbd;



 for (i = 0, rbd = dma->rbds; i < rx_ring_size; i++, rbd++) {
  dma_addr_t dma_addr;
  struct sk_buff *skb;

  skb = netdev_alloc_skb_ip_align(dev, PKT_BUF_SZ);
  if (skb == ((void*)0))
   return -1;
  dma_addr = dma_map_single(dev->dev.parent, skb->data,
       PKT_BUF_SZ, DMA_FROM_DEVICE);
  rbd->v_next = rbd+1;
  rbd->b_next = SWAP32(virt_to_dma(lp, rbd+1));
  rbd->b_addr = SWAP32(virt_to_dma(lp, rbd));
  rbd->skb = skb;
  rbd->v_data = skb->data;
  rbd->b_data = SWAP32(dma_addr);
  rbd->size = SWAP16(PKT_BUF_SZ);
 }
 lp->rbd_head = dma->rbds;
 rbd = dma->rbds + rx_ring_size - 1;
 rbd->v_next = dma->rbds;
 rbd->b_next = SWAP32(virt_to_dma(lp, dma->rbds));



 for (i = 0, rfd = dma->rfds; i < rx_ring_size; i++, rfd++) {
  rfd->rbd = I596_NULL;
  rfd->v_next = rfd+1;
  rfd->v_prev = rfd-1;
  rfd->b_next = SWAP32(virt_to_dma(lp, rfd+1));
  rfd->cmd = SWAP16(CMD_FLEX);
 }
 lp->rfd_head = dma->rfds;
 dma->scb.rfd = SWAP32(virt_to_dma(lp, dma->rfds));
 rfd = dma->rfds;
 rfd->rbd = SWAP32(virt_to_dma(lp, lp->rbd_head));
 rfd->v_prev = dma->rfds + rx_ring_size - 1;
 rfd = dma->rfds + rx_ring_size - 1;
 rfd->v_next = dma->rfds;
 rfd->b_next = SWAP32(virt_to_dma(lp, dma->rfds));
 rfd->cmd = SWAP16(CMD_EOL|CMD_FLEX);

 DMA_WBACK_INV(dev, dma, sizeof(struct i596_dma));
 return 0;
}
