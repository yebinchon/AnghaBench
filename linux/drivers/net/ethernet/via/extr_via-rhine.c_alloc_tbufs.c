
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tx_desc {int dummy; } ;
struct rhine_private {int tx_ring_dma; int quirks; TYPE_1__* tx_ring; int * tx_bufs; int ** tx_buf; int ** tx_skbuff; scalar_t__ cur_tx; scalar_t__ dirty_tx; } ;
struct net_device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {void* next_desc; void* desc_length; scalar_t__ tx_status; } ;


 int PKT_BUF_SZ ;
 int TXDESC ;
 int TX_RING_SIZE ;
 void* cpu_to_le32 (int) ;
 struct rhine_private* netdev_priv (struct net_device*) ;
 int netdev_reset_queue (struct net_device*) ;
 int rqRhineI ;

__attribute__((used)) static void alloc_tbufs(struct net_device* dev)
{
 struct rhine_private *rp = netdev_priv(dev);
 dma_addr_t next;
 int i;

 rp->dirty_tx = rp->cur_tx = 0;
 next = rp->tx_ring_dma;
 for (i = 0; i < TX_RING_SIZE; i++) {
  rp->tx_skbuff[i] = ((void*)0);
  rp->tx_ring[i].tx_status = 0;
  rp->tx_ring[i].desc_length = cpu_to_le32(TXDESC);
  next += sizeof(struct tx_desc);
  rp->tx_ring[i].next_desc = cpu_to_le32(next);
  if (rp->quirks & rqRhineI)
   rp->tx_buf[i] = &rp->tx_bufs[i * PKT_BUF_SZ];
 }
 rp->tx_ring[i-1].next_desc = cpu_to_le32(rp->tx_ring_dma);

 netdev_reset_queue(dev);
}
