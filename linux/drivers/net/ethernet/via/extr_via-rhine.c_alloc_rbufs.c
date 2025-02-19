
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rx_desc {int dummy; } ;
struct rhine_skb_dma {int dummy; } ;
struct rhine_private {int rx_buf_sz; int rx_ring_dma; TYPE_1__* rx_ring; int ** rx_skbuff; } ;
struct net_device {int mtu; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {void* next_desc; void* desc_length; scalar_t__ rx_status; } ;


 int PKT_BUF_SZ ;
 int RX_RING_SIZE ;
 void* cpu_to_le32 (int) ;
 int free_rbufs (struct net_device*) ;
 struct rhine_private* netdev_priv (struct net_device*) ;
 int rhine_reset_rbufs (struct rhine_private*) ;
 int rhine_skb_dma_init (struct net_device*,struct rhine_skb_dma*) ;
 int rhine_skb_dma_nic_store (struct rhine_private*,struct rhine_skb_dma*,int) ;

__attribute__((used)) static int alloc_rbufs(struct net_device *dev)
{
 struct rhine_private *rp = netdev_priv(dev);
 dma_addr_t next;
 int rc, i;

 rp->rx_buf_sz = (dev->mtu <= 1500 ? PKT_BUF_SZ : dev->mtu + 32);
 next = rp->rx_ring_dma;


 for (i = 0; i < RX_RING_SIZE; i++) {
  rp->rx_ring[i].rx_status = 0;
  rp->rx_ring[i].desc_length = cpu_to_le32(rp->rx_buf_sz);
  next += sizeof(struct rx_desc);
  rp->rx_ring[i].next_desc = cpu_to_le32(next);
  rp->rx_skbuff[i] = ((void*)0);
 }

 rp->rx_ring[i-1].next_desc = cpu_to_le32(rp->rx_ring_dma);


 for (i = 0; i < RX_RING_SIZE; i++) {
  struct rhine_skb_dma sd;

  rc = rhine_skb_dma_init(dev, &sd);
  if (rc < 0) {
   free_rbufs(dev);
   goto out;
  }

  rhine_skb_dma_nic_store(rp, &sd, i);
 }

 rhine_reset_rbufs(rp);
out:
 return rc;
}
