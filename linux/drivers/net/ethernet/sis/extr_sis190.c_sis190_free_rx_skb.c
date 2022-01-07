
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct sis190_private {int rx_buf_sz; struct pci_dev* pci_dev; } ;
struct pci_dev {int dummy; } ;
struct RxDesc {int addr; } ;


 int PCI_DMA_FROMDEVICE ;
 int dev_kfree_skb (struct sk_buff*) ;
 int le32_to_cpu (int ) ;
 int pci_unmap_single (struct pci_dev*,int ,int ,int ) ;
 int sis190_make_unusable_by_asic (struct RxDesc*) ;

__attribute__((used)) static void sis190_free_rx_skb(struct sis190_private *tp,
          struct sk_buff **sk_buff, struct RxDesc *desc)
{
 struct pci_dev *pdev = tp->pci_dev;

 pci_unmap_single(pdev, le32_to_cpu(desc->addr), tp->rx_buf_sz,
    PCI_DMA_FROMDEVICE);
 dev_kfree_skb(*sk_buff);
 *sk_buff = ((void*)0);
 sis190_make_unusable_by_asic(desc);
}
