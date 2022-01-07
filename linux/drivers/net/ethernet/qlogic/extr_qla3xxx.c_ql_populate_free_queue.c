
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ql_rcv_buf_cb {struct ql_rcv_buf_cb* next; void* buf_phy_addr_high; void* buf_phy_addr_low; TYPE_1__* skb; } ;
struct ql3_adapter {int lrg_buf_skb_check; scalar_t__ lrg_buffer_len; int ndev; int pdev; struct ql_rcv_buf_cb* lrg_buf_free_head; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int data; } ;


 int KERN_DEBUG ;
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
 int netdev_printk (int ,int ,char*) ;
 int pci_dma_mapping_error (int ,int ) ;
 int pci_map_single (int ,int ,scalar_t__,int ) ;
 int skb_reserve (TYPE_1__*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ql_populate_free_queue(struct ql3_adapter *qdev)
{
 struct ql_rcv_buf_cb *lrg_buf_cb = qdev->lrg_buf_free_head;
 dma_addr_t map;
 int err;

 while (lrg_buf_cb) {
  if (!lrg_buf_cb->skb) {
   lrg_buf_cb->skb =
    netdev_alloc_skb(qdev->ndev,
       qdev->lrg_buffer_len);
   if (unlikely(!lrg_buf_cb->skb)) {
    netdev_printk(KERN_DEBUG, qdev->ndev,
           "Failed netdev_alloc_skb()\n");
    break;
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
     break;
    }


    lrg_buf_cb->buf_phy_addr_low =
     cpu_to_le32(LS_64BITS(map));
    lrg_buf_cb->buf_phy_addr_high =
     cpu_to_le32(MS_64BITS(map));
    dma_unmap_addr_set(lrg_buf_cb, mapaddr, map);
    dma_unmap_len_set(lrg_buf_cb, maplen,
        qdev->lrg_buffer_len -
        QL_HEADER_SPACE);
    --qdev->lrg_buf_skb_check;
    if (!qdev->lrg_buf_skb_check)
     return 1;
   }
  }
  lrg_buf_cb = lrg_buf_cb->next;
 }
 return 0;
}
