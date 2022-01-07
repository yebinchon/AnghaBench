
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_wq {int dummy; } ;
struct sk_buff {unsigned int len; int data; } ;
struct enic {int pdev; } ;
typedef int dma_addr_t ;


 int ENOMEM ;
 int PCI_DMA_TODEVICE ;
 int WQ_ENET_OFFLOAD_MODE_CSUM ;
 int enic_dma_map_check (struct enic*,int ) ;
 int enic_queue_wq_desc_ex (struct vnic_wq*,struct sk_buff*,int ,unsigned int,unsigned int,int ,int,unsigned int,int ,int,int,int,int) ;
 int enic_queue_wq_skb_cont (struct enic*,struct vnic_wq*,struct sk_buff*,unsigned int,int) ;
 int pci_map_single (int ,int ,unsigned int,int ) ;
 unsigned int skb_headlen (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline int enic_queue_wq_skb_encap(struct enic *enic, struct vnic_wq *wq,
       struct sk_buff *skb,
       int vlan_tag_insert,
       unsigned int vlan_tag, int loopback)
{
 unsigned int head_len = skb_headlen(skb);
 unsigned int len_left = skb->len - head_len;





 unsigned int mss_or_csum = 7;
 int eop = (len_left == 0);
 dma_addr_t dma_addr;
 int err = 0;

 dma_addr = pci_map_single(enic->pdev, skb->data, head_len,
      PCI_DMA_TODEVICE);
 if (unlikely(enic_dma_map_check(enic, dma_addr)))
  return -ENOMEM;

 enic_queue_wq_desc_ex(wq, skb, dma_addr, head_len, mss_or_csum, 0,
         vlan_tag_insert, vlan_tag,
         WQ_ENET_OFFLOAD_MODE_CSUM, eop, 1 , eop,
         loopback);
 if (!eop)
  err = enic_queue_wq_skb_cont(enic, wq, skb, len_left, loopback);

 return err;
}
