
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct octnet_buf_free_info {int dptr; struct lio* lio; struct sk_buff* skb; } ;
struct lio {TYPE_2__* oct_dev; } ;
struct TYPE_4__ {TYPE_1__* pci_dev; } ;
struct TYPE_3__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int tx_buffer_free (struct sk_buff*) ;

__attribute__((used)) static void free_netbuf(void *buf)
{
 struct octnet_buf_free_info *finfo;
 struct sk_buff *skb;
 struct lio *lio;

 finfo = (struct octnet_buf_free_info *)buf;
 skb = finfo->skb;
 lio = finfo->lio;

 dma_unmap_single(&lio->oct_dev->pci_dev->dev, finfo->dptr, skb->len,
    DMA_TO_DEVICE);

 tx_buffer_free(skb);
}
