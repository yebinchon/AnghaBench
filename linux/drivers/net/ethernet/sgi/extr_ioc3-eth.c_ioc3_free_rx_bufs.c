
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ioc3_private {int rx_ci; int rx_pi; int * rxr; int dma_dev; struct sk_buff** rx_skbs; } ;


 int DMA_FROM_DEVICE ;
 int RX_BUF_SIZE ;
 int RX_RING_MASK ;
 int be64_to_cpu (int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static void ioc3_free_rx_bufs(struct ioc3_private *ip)
{
 int rx_entry, n_entry;
 struct sk_buff *skb;

 n_entry = ip->rx_ci;
 rx_entry = ip->rx_pi;

 while (n_entry != rx_entry) {
  skb = ip->rx_skbs[n_entry];
  if (skb) {
   dma_unmap_single(ip->dma_dev,
      be64_to_cpu(ip->rxr[n_entry]),
      RX_BUF_SIZE, DMA_FROM_DEVICE);
   dev_kfree_skb_any(skb);
  }
  n_entry = (n_entry + 1) & RX_RING_MASK;
 }
}
