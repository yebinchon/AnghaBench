
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sk_buff {int data; } ;
struct net_device {int dummy; } ;
struct ionic_rxq_desc {int addr; int len; } ;
struct ionic_rxq_comp {int len; } ;
struct ionic_queue {TYPE_2__* lif; } ;
struct ionic_desc_info {struct ionic_rxq_desc* desc; } ;
struct ionic_cq_info {struct ionic_rxq_comp* cq_desc; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {scalar_t__ rx_copybreak; TYPE_1__* ionic; struct net_device* netdev; } ;
struct TYPE_3__ {struct device* dev; } ;


 int DMA_FROM_DEVICE ;
 int dma_sync_single_for_cpu (struct device*,int ,scalar_t__,int ) ;
 int dma_unmap_single (struct device*,int ,scalar_t__,int ) ;
 int ionic_rx_recycle (struct ionic_queue*,struct ionic_desc_info*,struct sk_buff*) ;
 scalar_t__ le16_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int memcpy (int ,int ,scalar_t__) ;
 struct sk_buff* netdev_alloc_skb_ip_align (struct net_device*,scalar_t__) ;

__attribute__((used)) static bool ionic_rx_copybreak(struct ionic_queue *q, struct ionic_desc_info *desc_info,
          struct ionic_cq_info *cq_info, struct sk_buff **skb)
{
 struct ionic_rxq_comp *comp = cq_info->cq_desc;
 struct ionic_rxq_desc *desc = desc_info->desc;
 struct net_device *netdev = q->lif->netdev;
 struct device *dev = q->lif->ionic->dev;
 struct sk_buff *new_skb;
 u16 clen, dlen;

 clen = le16_to_cpu(comp->len);
 dlen = le16_to_cpu(desc->len);
 if (clen > q->lif->rx_copybreak) {
  dma_unmap_single(dev, (dma_addr_t)le64_to_cpu(desc->addr),
     dlen, DMA_FROM_DEVICE);
  return 0;
 }

 new_skb = netdev_alloc_skb_ip_align(netdev, clen);
 if (!new_skb) {
  dma_unmap_single(dev, (dma_addr_t)le64_to_cpu(desc->addr),
     dlen, DMA_FROM_DEVICE);
  return 0;
 }

 dma_sync_single_for_cpu(dev, (dma_addr_t)le64_to_cpu(desc->addr),
    clen, DMA_FROM_DEVICE);

 memcpy(new_skb->data, (*skb)->data, clen);

 ionic_rx_recycle(q, desc_info, *skb);
 *skb = new_skb;

 return 1;
}
