
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mt76_txwi_cache {int dummy; } ;
struct mt76_dev {int dummy; } ;
struct mt7615_txp {int dummy; } ;


 int MT_TXD_SIZE ;
 int * mt76_get_txwi_ptr (struct mt76_dev*,struct mt76_txwi_cache*) ;

__attribute__((used)) static inline struct mt7615_txp *
mt7615_txwi_to_txp(struct mt76_dev *dev, struct mt76_txwi_cache *t)
{
 u8 *txwi;

 if (!t)
  return ((void*)0);

 txwi = mt76_get_txwi_ptr(dev, t);

 return (struct mt7615_txp *)(txwi + MT_TXD_SIZE);
}
