
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_desc_info {int alloc; } ;
struct ksz_hw {struct ksz_desc_info rx_desc_info; } ;
struct ksz_dma_buf {int len; int dma; scalar_t__ skb; } ;
struct ksz_desc {int dummy; } ;
struct dev_info {int pdev; int mtu; struct ksz_hw hw; } ;


 struct ksz_dma_buf* DMA_BUFFER (struct ksz_desc*) ;
 int GFP_ATOMIC ;
 int PCI_DMA_FROMDEVICE ;
 scalar_t__ alloc_skb (int ,int ) ;
 int free_dma_buf (struct dev_info*,struct ksz_dma_buf*,int ) ;
 int get_rx_pkt (struct ksz_desc_info*,struct ksz_desc**) ;
 int pci_map_single (int ,int ,int ,int ) ;
 int release_desc (struct ksz_desc*) ;
 int set_rx_buf (struct ksz_desc*,int ) ;
 int set_rx_len (struct ksz_desc*,int ) ;
 int skb_tail_pointer (scalar_t__) ;

__attribute__((used)) static void ksz_init_rx_buffers(struct dev_info *adapter)
{
 int i;
 struct ksz_desc *desc;
 struct ksz_dma_buf *dma_buf;
 struct ksz_hw *hw = &adapter->hw;
 struct ksz_desc_info *info = &hw->rx_desc_info;

 for (i = 0; i < hw->rx_desc_info.alloc; i++) {
  get_rx_pkt(info, &desc);

  dma_buf = DMA_BUFFER(desc);
  if (dma_buf->skb && dma_buf->len != adapter->mtu)
   free_dma_buf(adapter, dma_buf, PCI_DMA_FROMDEVICE);
  dma_buf->len = adapter->mtu;
  if (!dma_buf->skb)
   dma_buf->skb = alloc_skb(dma_buf->len, GFP_ATOMIC);
  if (dma_buf->skb && !dma_buf->dma)
   dma_buf->dma = pci_map_single(
    adapter->pdev,
    skb_tail_pointer(dma_buf->skb),
    dma_buf->len,
    PCI_DMA_FROMDEVICE);


  set_rx_buf(desc, dma_buf->dma);
  set_rx_len(desc, dma_buf->len);
  release_desc(desc);
 }
}
