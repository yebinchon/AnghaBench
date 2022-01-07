
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; } ;
struct ql_rcv_buf_cb {int index; void* buf_phy_addr_high; void* buf_phy_addr_low; struct sk_buff* skb; } ;
struct ql3_adapter {int num_large_buffers; int lrg_buffer_len; int ndev; int pdev; struct ql_rcv_buf_cb* lrg_buf; } ;
typedef int dma_addr_t ;


 int ENOMEM ;
 int LS_64BITS (int ) ;
 int MS_64BITS (int ) ;
 int PCI_DMA_FROMDEVICE ;
 int QL_HEADER_SPACE ;
 void* cpu_to_le32 (int ) ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 int dma_unmap_addr_set (struct ql_rcv_buf_cb*,int ,int ) ;
 int dma_unmap_len_set (struct ql_rcv_buf_cb*,int ,int) ;
 int mapaddr ;
 int maplen ;
 int memset (struct ql_rcv_buf_cb*,int ,int) ;
 struct sk_buff* netdev_alloc_skb (int ,int) ;
 int netdev_err (int ,char*,int,...) ;
 int pci_dma_mapping_error (int ,int ) ;
 int pci_map_single (int ,int ,int,int ) ;
 int ql_free_large_buffers (struct ql3_adapter*) ;
 int skb_reserve (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ql_alloc_large_buffers(struct ql3_adapter *qdev)
{
 int i;
 struct ql_rcv_buf_cb *lrg_buf_cb;
 struct sk_buff *skb;
 dma_addr_t map;
 int err;

 for (i = 0; i < qdev->num_large_buffers; i++) {
  skb = netdev_alloc_skb(qdev->ndev,
           qdev->lrg_buffer_len);
  if (unlikely(!skb)) {

   netdev_err(qdev->ndev,
       "large buff alloc failed for %d bytes at index %d\n",
       qdev->lrg_buffer_len * 2, i);
   ql_free_large_buffers(qdev);
   return -ENOMEM;
  } else {

   lrg_buf_cb = &qdev->lrg_buf[i];
   memset(lrg_buf_cb, 0, sizeof(struct ql_rcv_buf_cb));
   lrg_buf_cb->index = i;
   lrg_buf_cb->skb = skb;




   skb_reserve(skb, QL_HEADER_SPACE);
   map = pci_map_single(qdev->pdev,
          skb->data,
          qdev->lrg_buffer_len -
          QL_HEADER_SPACE,
          PCI_DMA_FROMDEVICE);

   err = pci_dma_mapping_error(qdev->pdev, map);
   if (err) {
    netdev_err(qdev->ndev,
        "PCI mapping failed with error: %d\n",
        err);
    dev_kfree_skb_irq(skb);
    ql_free_large_buffers(qdev);
    return -ENOMEM;
   }

   dma_unmap_addr_set(lrg_buf_cb, mapaddr, map);
   dma_unmap_len_set(lrg_buf_cb, maplen,
       qdev->lrg_buffer_len -
       QL_HEADER_SPACE);
   lrg_buf_cb->buf_phy_addr_low =
       cpu_to_le32(LS_64BITS(map));
   lrg_buf_cb->buf_phy_addr_high =
       cpu_to_le32(MS_64BITS(map));
  }
 }
 return 0;
}
