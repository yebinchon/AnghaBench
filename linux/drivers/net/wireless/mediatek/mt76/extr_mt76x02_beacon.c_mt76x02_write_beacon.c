
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int txwi ;
struct sk_buff {int len; struct mt76x02_txwi* data; } ;
struct mt76x02_txwi {int dummy; } ;
struct mt76x02_dev {TYPE_1__* beacon_ops; } ;
struct TYPE_2__ {int slot_size; } ;


 int ENOSPC ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int mt76_wr_copy (struct mt76x02_dev*,int,struct mt76x02_txwi*,int) ;
 int mt76x02_mac_write_txwi (struct mt76x02_dev*,struct mt76x02_txwi*,struct sk_buff*,int *,int *,int) ;

__attribute__((used)) static int
mt76x02_write_beacon(struct mt76x02_dev *dev, int offset, struct sk_buff *skb)
{
 int beacon_len = dev->beacon_ops->slot_size;
 struct mt76x02_txwi txwi;

 if (WARN_ON_ONCE(beacon_len < skb->len + sizeof(struct mt76x02_txwi)))
  return -ENOSPC;

 mt76x02_mac_write_txwi(dev, &txwi, skb, ((void*)0), ((void*)0), skb->len);

 mt76_wr_copy(dev, offset, &txwi, sizeof(txwi));
 offset += sizeof(txwi);

 mt76_wr_copy(dev, offset, skb->data, skb->len);
 return 0;
}
