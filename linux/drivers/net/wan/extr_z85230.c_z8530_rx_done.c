
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct z8530_channel {int rxdma_on; int dma_ready; unsigned char** rx_buf; size_t dma_num; int mtu; int count; int max; TYPE_2__* netdevice; int (* rx_function ) (struct z8530_channel*,struct sk_buff*) ;struct sk_buff* skb2; struct sk_buff* skb; int dptr; int rxdma; } ;
struct sk_buff {int data; } ;
struct TYPE_4__ {int rx_bytes; int rx_dropped; int rx_packets; } ;
struct TYPE_5__ {TYPE_1__ stats; } ;


 int DMA_MODE_READ ;
 int R0 ;
 int RES_Rx_CRC ;
 int RT_LOCK ;
 int RT_UNLOCK ;
 unsigned long claim_dma_lock () ;
 int clear_dma_ff (int ) ;
 void* dev_alloc_skb (int) ;
 int disable_dma (int ) ;
 int enable_dma (int ) ;
 int get_dma_residue (int ) ;
 int netdev_err (TYPE_2__*,char*) ;
 int netdev_warn (TYPE_2__*,char*) ;
 int release_dma_lock (unsigned long) ;
 int set_dma_addr (int ,int ) ;
 int set_dma_count (int ,int) ;
 int set_dma_mode (int ,int) ;
 int skb_copy_to_linear_data (struct sk_buff*,unsigned char*,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_trim (struct sk_buff*,int) ;
 int stub1 (struct z8530_channel*,struct sk_buff*) ;
 int virt_to_bus (unsigned char*) ;
 int write_zsreg (struct z8530_channel*,int ,int ) ;

__attribute__((used)) static void z8530_rx_done(struct z8530_channel *c)
{
 struct sk_buff *skb;
 int ct;





 if(c->rxdma_on)
 {





  int ready=c->dma_ready;
  unsigned char *rxb=c->rx_buf[c->dma_num];
  unsigned long flags;





  flags=claim_dma_lock();

  disable_dma(c->rxdma);
  clear_dma_ff(c->rxdma);
  c->rxdma_on=0;
  ct=c->mtu-get_dma_residue(c->rxdma);
  if(ct<0)
   ct=2;
  c->dma_ready=0;






  if(ready)
  {
   c->dma_num^=1;
   set_dma_mode(c->rxdma, DMA_MODE_READ|0x10);
   set_dma_addr(c->rxdma, virt_to_bus(c->rx_buf[c->dma_num]));
   set_dma_count(c->rxdma, c->mtu);
   c->rxdma_on = 1;
   enable_dma(c->rxdma);


   write_zsreg(c, R0, RES_Rx_CRC);
  }
  else


   netdev_warn(c->netdevice, "DMA flip overrun!\n");

  release_dma_lock(flags);
  skb = dev_alloc_skb(ct);
  if (skb == ((void*)0)) {
   c->netdevice->stats.rx_dropped++;
   netdev_warn(c->netdevice, "Memory squeeze\n");
  } else {
   skb_put(skb, ct);
   skb_copy_to_linear_data(skb, rxb, ct);
   c->netdevice->stats.rx_packets++;
   c->netdevice->stats.rx_bytes += ct;
  }
  c->dma_ready = 1;
 } else {
  RT_LOCK;
  skb = c->skb;
  ct=c->count;

  c->skb = c->skb2;
  c->count = 0;
  c->max = c->mtu;
  if (c->skb) {
   c->dptr = c->skb->data;
   c->max = c->mtu;
  } else {
   c->count = 0;
   c->max = 0;
  }
  RT_UNLOCK;

  c->skb2 = dev_alloc_skb(c->mtu);
  if (c->skb2 == ((void*)0))
   netdev_warn(c->netdevice, "memory squeeze\n");
  else
   skb_put(c->skb2, c->mtu);
  c->netdevice->stats.rx_packets++;
  c->netdevice->stats.rx_bytes += ct;
 }



 if (skb) {
  skb_trim(skb, ct);
  c->rx_function(c, skb);
 } else {
  c->netdevice->stats.rx_dropped++;
  netdev_err(c->netdevice, "Lost a frame\n");
 }
}
