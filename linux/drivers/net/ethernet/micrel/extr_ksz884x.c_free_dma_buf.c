
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_dma_buf {scalar_t__ dma; int * skb; int len; } ;
struct dev_info {int pdev; } ;


 int dev_kfree_skb (int *) ;
 int pci_unmap_single (int ,scalar_t__,int ,int) ;

__attribute__((used)) static void free_dma_buf(struct dev_info *adapter, struct ksz_dma_buf *dma_buf,
 int direction)
{
 pci_unmap_single(adapter->pdev, dma_buf->dma, dma_buf->len, direction);
 dev_kfree_skb(dma_buf->skb);
 dma_buf->skb = ((void*)0);
 dma_buf->dma = 0;
}
