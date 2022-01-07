
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct sk_buff {scalar_t__ data; } ;
struct mt76_txwi_cache {int * skb; } ;
struct mt76_dev {int dummy; } ;
struct mt7615_tx_free {int * token; int ctrl; } ;
struct mt7615_dev {int token_lock; int token; struct mt76_dev mt76; } ;


 size_t FIELD_GET (int ,int ) ;
 int MT_TX_FREE_MSDU_ID_CNT ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct mt76_txwi_cache* idr_remove (int *,int ) ;
 int le16_to_cpu (int ) ;
 int mt7615_txp_skb_unmap (struct mt76_dev*,struct mt76_txwi_cache*) ;
 int mt76_put_txwi (struct mt76_dev*,struct mt76_txwi_cache*) ;
 int mt76_tx_complete_skb (struct mt76_dev*,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void mt7615_mac_tx_free(struct mt7615_dev *dev, struct sk_buff *skb)
{
 struct mt7615_tx_free *free = (struct mt7615_tx_free *)skb->data;
 struct mt76_dev *mdev = &dev->mt76;
 struct mt76_txwi_cache *txwi;
 u8 i, count;

 count = FIELD_GET(MT_TX_FREE_MSDU_ID_CNT, le16_to_cpu(free->ctrl));
 for (i = 0; i < count; i++) {
  spin_lock_bh(&dev->token_lock);
  txwi = idr_remove(&dev->token, le16_to_cpu(free->token[i]));
  spin_unlock_bh(&dev->token_lock);

  if (!txwi)
   continue;

  mt7615_txp_skb_unmap(mdev, txwi);
  if (txwi->skb) {
   mt76_tx_complete_skb(mdev, txwi->skb);
   txwi->skb = ((void*)0);
  }

  mt76_put_txwi(mdev, txwi);
 }
 dev_kfree_skb(skb);
}
