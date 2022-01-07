
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76_queue_entry {int skb; } ;
struct mt76_dev {int dummy; } ;
typedef enum mt76_txq_id { ____Placeholder_mt76_txq_id } mt76_txq_id ;


 int mt76_tx_complete_skb (struct mt76_dev*,int ) ;
 int mt76x02u_remove_dma_hdr (int ) ;

void mt76x02u_tx_complete_skb(struct mt76_dev *mdev, enum mt76_txq_id qid,
         struct mt76_queue_entry *e)
{
 mt76x02u_remove_dma_hdr(e->skb);
 mt76_tx_complete_skb(mdev, e->skb);
}
