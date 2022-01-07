
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; } ;
struct net_device {scalar_t__ mtu; } ;
struct gem_txd {scalar_t__ buffer; scalar_t__ control_word; } ;
struct gem_rxd {void* status_word; void* buffer; } ;
struct gem_init_block {struct gem_txd* txd; struct gem_rxd* rxd; } ;
struct gem {int pdev; scalar_t__ rx_buf_sz; struct sk_buff** rx_skbs; scalar_t__ tx_old; scalar_t__ tx_new; scalar_t__ rx_old; scalar_t__ rx_new; struct net_device* dev; struct gem_init_block* init_block; } ;
typedef int dma_addr_t ;


 scalar_t__ ETH_HLEN ;
 int GFP_KERNEL ;
 int PCI_DMA_FROMDEVICE ;
 int RXDCTRL_FRESH (struct gem*) ;
 int RX_BUF_ALLOC_SIZE (struct gem*) ;
 scalar_t__ RX_OFFSET ;
 int RX_RING_SIZE ;
 int TX_RING_SIZE ;
 scalar_t__ VLAN_ETH_FRAME_LEN ;
 scalar_t__ VLAN_HLEN ;
 void* cpu_to_le64 (int ) ;
 int dma_wmb () ;
 struct sk_buff* gem_alloc_skb (struct net_device*,int ,int ) ;
 int gem_clean_rings (struct gem*) ;
 scalar_t__ max (scalar_t__,unsigned int) ;
 int offset_in_page (int ) ;
 int pci_map_page (int ,int ,int ,int ,int ) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 int virt_to_page (int ) ;
 int wmb () ;

__attribute__((used)) static void gem_init_rings(struct gem *gp)
{
 struct gem_init_block *gb = gp->init_block;
 struct net_device *dev = gp->dev;
 int i;
 dma_addr_t dma_addr;

 gp->rx_new = gp->rx_old = gp->tx_new = gp->tx_old = 0;

 gem_clean_rings(gp);

 gp->rx_buf_sz = max(dev->mtu + ETH_HLEN + VLAN_HLEN,
       (unsigned)VLAN_ETH_FRAME_LEN);

 for (i = 0; i < RX_RING_SIZE; i++) {
  struct sk_buff *skb;
  struct gem_rxd *rxd = &gb->rxd[i];

  skb = gem_alloc_skb(dev, RX_BUF_ALLOC_SIZE(gp), GFP_KERNEL);
  if (!skb) {
   rxd->buffer = 0;
   rxd->status_word = 0;
   continue;
  }

  gp->rx_skbs[i] = skb;
  skb_put(skb, (gp->rx_buf_sz + RX_OFFSET));
  dma_addr = pci_map_page(gp->pdev,
     virt_to_page(skb->data),
     offset_in_page(skb->data),
     RX_BUF_ALLOC_SIZE(gp),
     PCI_DMA_FROMDEVICE);
  rxd->buffer = cpu_to_le64(dma_addr);
  dma_wmb();
  rxd->status_word = cpu_to_le64(RXDCTRL_FRESH(gp));
  skb_reserve(skb, RX_OFFSET);
 }

 for (i = 0; i < TX_RING_SIZE; i++) {
  struct gem_txd *txd = &gb->txd[i];

  txd->control_word = 0;
  dma_wmb();
  txd->buffer = 0;
 }
 wmb();
}
