
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int data; } ;
struct pci_dev {int dev; } ;
struct bnxt_napi {int napi; struct bnxt* bp; } ;
struct bnxt {int rx_dir; int rx_copy_thresh; struct pci_dev* pdev; } ;
typedef int dma_addr_t ;


 int NET_IP_ALIGN ;
 int dma_sync_single_for_cpu (int *,int ,int ,int ) ;
 int dma_sync_single_for_device (int *,int ,int ,int ) ;
 int memcpy (int,int *,int) ;
 struct sk_buff* napi_alloc_skb (int *,unsigned int) ;
 int skb_put (struct sk_buff*,unsigned int) ;

__attribute__((used)) static inline struct sk_buff *bnxt_copy_skb(struct bnxt_napi *bnapi, u8 *data,
         unsigned int len,
         dma_addr_t mapping)
{
 struct bnxt *bp = bnapi->bp;
 struct pci_dev *pdev = bp->pdev;
 struct sk_buff *skb;

 skb = napi_alloc_skb(&bnapi->napi, len);
 if (!skb)
  return ((void*)0);

 dma_sync_single_for_cpu(&pdev->dev, mapping, bp->rx_copy_thresh,
    bp->rx_dir);

 memcpy(skb->data - NET_IP_ALIGN, data - NET_IP_ALIGN,
        len + NET_IP_ALIGN);

 dma_sync_single_for_device(&pdev->dev, mapping, bp->rx_copy_thresh,
       bp->rx_dir);

 skb_put(skb, len);
 return skb;
}
