
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_rq_buf {unsigned int len; int dma_addr; struct sk_buff* os_buf; } ;
struct vnic_rq {struct vnic_rq_buf* to_use; int vdev; } ;
struct sk_buff {int data; } ;
struct net_device {unsigned int mtu; } ;
struct enic {int pdev; struct net_device* netdev; } ;
typedef int dma_addr_t ;


 int ENOMEM ;
 int PCI_DMA_FROMDEVICE ;
 unsigned int VLAN_ETH_HLEN ;
 int dev_kfree_skb (struct sk_buff*) ;
 int enic_dma_map_check (struct enic*,int ) ;
 int enic_queue_rq_desc (struct vnic_rq*,struct sk_buff*,unsigned int,int ,unsigned int) ;
 struct sk_buff* netdev_alloc_skb_ip_align (struct net_device*,unsigned int) ;
 int pci_map_single (int ,int ,unsigned int,int ) ;
 scalar_t__ unlikely (int ) ;
 struct enic* vnic_dev_priv (int ) ;

__attribute__((used)) static int enic_rq_alloc_buf(struct vnic_rq *rq)
{
 struct enic *enic = vnic_dev_priv(rq->vdev);
 struct net_device *netdev = enic->netdev;
 struct sk_buff *skb;
 unsigned int len = netdev->mtu + VLAN_ETH_HLEN;
 unsigned int os_buf_index = 0;
 dma_addr_t dma_addr;
 struct vnic_rq_buf *buf = rq->to_use;

 if (buf->os_buf) {
  enic_queue_rq_desc(rq, buf->os_buf, os_buf_index, buf->dma_addr,
       buf->len);

  return 0;
 }
 skb = netdev_alloc_skb_ip_align(netdev, len);
 if (!skb)
  return -ENOMEM;

 dma_addr = pci_map_single(enic->pdev, skb->data, len,
      PCI_DMA_FROMDEVICE);
 if (unlikely(enic_dma_map_check(enic, dma_addr))) {
  dev_kfree_skb(skb);
  return -ENOMEM;
 }

 enic_queue_rq_desc(rq, skb, os_buf_index,
  dma_addr, len);

 return 0;
}
