
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; } ;
struct sis190_private {int rx_buf_sz; int pci_dev; int dev; } ;
typedef int dma_addr_t ;


 int PCI_DMA_FROMDEVICE ;
 struct sk_buff* netdev_alloc_skb_ip_align (int ,int) ;
 int pci_dma_sync_single_for_cpu (int ,int ,int ,int ) ;
 int rx_copybreak ;
 int skb_copy_to_linear_data (struct sk_buff*,int ,int) ;

__attribute__((used)) static bool sis190_try_rx_copy(struct sis190_private *tp,
          struct sk_buff **sk_buff, int pkt_size,
          dma_addr_t addr)
{
 struct sk_buff *skb;
 bool done = 0;

 if (pkt_size >= rx_copybreak)
  goto out;

 skb = netdev_alloc_skb_ip_align(tp->dev, pkt_size);
 if (!skb)
  goto out;

 pci_dma_sync_single_for_cpu(tp->pci_dev, addr, tp->rx_buf_sz,
    PCI_DMA_FROMDEVICE);
 skb_copy_to_linear_data(skb, sk_buff[0]->data, pkt_size);
 *sk_buff = skb;
 done = 1;
out:
 return done;
}
