
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ql_rcv_buf_cb {void* buf_phy_addr_high; void* buf_phy_addr_low; TYPE_1__* skb; struct ql_rcv_buf_cb* next; } ;
struct ql3_adapter {int lrg_buf_free_count; scalar_t__ lrg_buffer_len; int lrg_buf_skb_check; int ndev; int pdev; struct ql_rcv_buf_cb* lrg_buf_free_tail; struct ql_rcv_buf_cb* lrg_buf_free_head; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int data; } ;


 int LS_64BITS (int ) ;
 int MS_64BITS (int ) ;
 int PCI_DMA_FROMDEVICE ;
 scalar_t__ QL_HEADER_SPACE ;
 void* cpu_to_le32 (int ) ;
 int dev_kfree_skb (TYPE_1__*) ;
 int dma_unmap_addr_set (struct ql_rcv_buf_cb*,int ,int ) ;
 int dma_unmap_len_set (struct ql_rcv_buf_cb*,int ,scalar_t__) ;
 int mapaddr ;
 int maplen ;
 TYPE_1__* netdev_alloc_skb (int ,scalar_t__) ;
 int netdev_err (int ,char*,int) ;
 int pci_dma_mapping_error (int ,int ) ;
 int pci_map_single (int ,int ,scalar_t__,int ) ;
 int skb_reserve (TYPE_1__*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ql_release_to_lrg_buf_free_list(struct ql3_adapter *qdev,
         struct ql_rcv_buf_cb *lrg_buf_cb)
{
 dma_addr_t map;
 int err;
 lrg_buf_cb->next = ((void*)0);

 if (qdev->lrg_buf_free_tail == ((void*)0)) {
  qdev->lrg_buf_free_head = qdev->lrg_buf_free_tail = lrg_buf_cb;
 } else {
  qdev->lrg_buf_free_tail->next = lrg_buf_cb;
  qdev->lrg_buf_free_tail = lrg_buf_cb;
 }

 if (!lrg_buf_cb->skb) {
  lrg_buf_cb->skb = netdev_alloc_skb(qdev->ndev,
         qdev->lrg_buffer_len);
  if (unlikely(!lrg_buf_cb->skb)) {
   qdev->lrg_buf_skb_check++;
  } else {




   skb_reserve(lrg_buf_cb->skb, QL_HEADER_SPACE);
   map = pci_map_single(qdev->pdev,
          lrg_buf_cb->skb->data,
          qdev->lrg_buffer_len -
          QL_HEADER_SPACE,
          PCI_DMA_FROMDEVICE);
   err = pci_dma_mapping_error(qdev->pdev, map);
   if (err) {
    netdev_err(qdev->ndev,
        "PCI mapping failed with error: %d\n",
        err);
    dev_kfree_skb(lrg_buf_cb->skb);
    lrg_buf_cb->skb = ((void*)0);

    qdev->lrg_buf_skb_check++;
    return;
   }

   lrg_buf_cb->buf_phy_addr_low =
       cpu_to_le32(LS_64BITS(map));
   lrg_buf_cb->buf_phy_addr_high =
       cpu_to_le32(MS_64BITS(map));
   dma_unmap_addr_set(lrg_buf_cb, mapaddr, map);
   dma_unmap_len_set(lrg_buf_cb, maplen,
       qdev->lrg_buffer_len -
       QL_HEADER_SPACE);
  }
 }

 qdev->lrg_buf_free_count++;
}
