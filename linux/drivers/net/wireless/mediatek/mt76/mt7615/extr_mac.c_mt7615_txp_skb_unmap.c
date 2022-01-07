
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76_txwi_cache {int dummy; } ;
struct mt76_dev {int dev; } ;
struct mt7615_txp {int nbuf; int * len; int * buf; } ;


 int DMA_TO_DEVICE ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 struct mt7615_txp* mt7615_txwi_to_txp (struct mt76_dev*,struct mt76_txwi_cache*) ;

void mt7615_txp_skb_unmap(struct mt76_dev *dev,
     struct mt76_txwi_cache *t)
{
 struct mt7615_txp *txp;
 int i;

 txp = mt7615_txwi_to_txp(dev, t);
 for (i = 1; i < txp->nbuf; i++)
  dma_unmap_single(dev->dev, le32_to_cpu(txp->buf[i]),
     le16_to_cpu(txp->len[i]), DMA_TO_DEVICE);
}
