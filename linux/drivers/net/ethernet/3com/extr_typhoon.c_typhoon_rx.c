
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct typhoon {int dev; int pdev; struct rxbuff_ent* rxbuffers; } ;
struct sk_buff {int ip_summed; int protocol; int data; } ;
struct rxbuff_ent {int dma_addr; struct sk_buff* skb; } ;
struct rx_desc {scalar_t__ addr; int flags; int rxStatus; int vlanTag; int frameLen; } ;
struct basic_ring {scalar_t__ ringBase; } ;
typedef int dma_addr_t ;
typedef int __le32 ;


 int CHECKSUM_UNNECESSARY ;
 int ETH_P_8021Q ;
 int PCI_DMA_FROMDEVICE ;
 int PKT_BUF_SZ ;
 int TYPHOON_RX_ERROR ;
 int TYPHOON_RX_IP_CHK_GOOD ;
 int TYPHOON_RX_TCP_CHK_GOOD ;
 int TYPHOON_RX_UDP_CHK_GOOD ;
 int TYPHOON_RX_VLAN ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int) ;
 int cpu_to_le32 (scalar_t__) ;
 int eth_type_trans (struct sk_buff*,int ) ;
 int htons (int ) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int volatile) ;
 struct sk_buff* netdev_alloc_skb (int ,int) ;
 int netif_receive_skb (struct sk_buff*) ;
 int ntohl (int ) ;
 int pci_dma_sync_single_for_cpu (int ,int ,int ,int ) ;
 int pci_dma_sync_single_for_device (int ,int ,int ,int ) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 int rx_copybreak ;
 int skb_checksum_none_assert (struct sk_buff*) ;
 int skb_copy_to_linear_data (struct sk_buff*,int ,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 int typhoon_alloc_rx_skb (struct typhoon*,scalar_t__) ;
 int typhoon_inc_rx_index (scalar_t__*,int) ;
 int typhoon_recycle_rx_skb (struct typhoon*,scalar_t__) ;

__attribute__((used)) static int
typhoon_rx(struct typhoon *tp, struct basic_ring *rxRing, volatile __le32 * ready,
    volatile __le32 * cleared, int budget)
{
 struct rx_desc *rx;
 struct sk_buff *skb, *new_skb;
 struct rxbuff_ent *rxb;
 dma_addr_t dma_addr;
 u32 local_ready;
 u32 rxaddr;
 int pkt_len;
 u32 idx;
 __le32 csum_bits;
 int received;

 received = 0;
 local_ready = le32_to_cpu(*ready);
 rxaddr = le32_to_cpu(*cleared);
 while(rxaddr != local_ready && budget > 0) {
  rx = (struct rx_desc *) (rxRing->ringBase + rxaddr);
  idx = rx->addr;
  rxb = &tp->rxbuffers[idx];
  skb = rxb->skb;
  dma_addr = rxb->dma_addr;

  typhoon_inc_rx_index(&rxaddr, 1);

  if(rx->flags & TYPHOON_RX_ERROR) {
   typhoon_recycle_rx_skb(tp, idx);
   continue;
  }

  pkt_len = le16_to_cpu(rx->frameLen);

  if(pkt_len < rx_copybreak &&
     (new_skb = netdev_alloc_skb(tp->dev, pkt_len + 2)) != ((void*)0)) {
   skb_reserve(new_skb, 2);
   pci_dma_sync_single_for_cpu(tp->pdev, dma_addr,
          PKT_BUF_SZ,
          PCI_DMA_FROMDEVICE);
   skb_copy_to_linear_data(new_skb, skb->data, pkt_len);
   pci_dma_sync_single_for_device(tp->pdev, dma_addr,
             PKT_BUF_SZ,
             PCI_DMA_FROMDEVICE);
   skb_put(new_skb, pkt_len);
   typhoon_recycle_rx_skb(tp, idx);
  } else {
   new_skb = skb;
   skb_put(new_skb, pkt_len);
   pci_unmap_single(tp->pdev, dma_addr, PKT_BUF_SZ,
           PCI_DMA_FROMDEVICE);
   typhoon_alloc_rx_skb(tp, idx);
  }
  new_skb->protocol = eth_type_trans(new_skb, tp->dev);
  csum_bits = rx->rxStatus & (TYPHOON_RX_IP_CHK_GOOD |
   TYPHOON_RX_UDP_CHK_GOOD | TYPHOON_RX_TCP_CHK_GOOD);
  if(csum_bits ==
     (TYPHOON_RX_IP_CHK_GOOD | TYPHOON_RX_TCP_CHK_GOOD) ||
     csum_bits ==
     (TYPHOON_RX_IP_CHK_GOOD | TYPHOON_RX_UDP_CHK_GOOD)) {
   new_skb->ip_summed = CHECKSUM_UNNECESSARY;
  } else
   skb_checksum_none_assert(new_skb);

  if (rx->rxStatus & TYPHOON_RX_VLAN)
   __vlan_hwaccel_put_tag(new_skb, htons(ETH_P_8021Q),
            ntohl(rx->vlanTag) & 0xffff);
  netif_receive_skb(new_skb);

  received++;
  budget--;
 }
 *cleared = cpu_to_le32(rxaddr);

 return received;
}
