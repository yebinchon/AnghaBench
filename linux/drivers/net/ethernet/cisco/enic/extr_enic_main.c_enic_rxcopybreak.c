
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct vnic_rq_buf {int dma_addr; } ;
struct sk_buff {int data; } ;
struct net_device {int dummy; } ;
struct enic {scalar_t__ rx_copybreak; int pdev; } ;


 int DMA_FROM_DEVICE ;
 int memcpy (int ,int ,scalar_t__) ;
 struct sk_buff* netdev_alloc_skb_ip_align (struct net_device*,scalar_t__) ;
 struct enic* netdev_priv (struct net_device*) ;
 int pci_dma_sync_single_for_cpu (int ,int ,scalar_t__,int ) ;

__attribute__((used)) static bool enic_rxcopybreak(struct net_device *netdev, struct sk_buff **skb,
        struct vnic_rq_buf *buf, u16 len)
{
 struct enic *enic = netdev_priv(netdev);
 struct sk_buff *new_skb;

 if (len > enic->rx_copybreak)
  return 0;
 new_skb = netdev_alloc_skb_ip_align(netdev, len);
 if (!new_skb)
  return 0;
 pci_dma_sync_single_for_cpu(enic->pdev, buf->dma_addr, len,
        DMA_FROM_DEVICE);
 memcpy(new_skb->data, (*skb)->data, len);
 *skb = new_skb;

 return 1;
}
