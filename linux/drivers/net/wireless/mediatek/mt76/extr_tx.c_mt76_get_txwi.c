
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76_txwi_cache {int dummy; } ;
struct mt76_dev {int dummy; } ;


 struct mt76_txwi_cache* __mt76_get_txwi (struct mt76_dev*) ;
 struct mt76_txwi_cache* mt76_alloc_txwi (struct mt76_dev*) ;

struct mt76_txwi_cache *
mt76_get_txwi(struct mt76_dev *dev)
{
 struct mt76_txwi_cache *t = __mt76_get_txwi(dev);

 if (t)
  return t;

 return mt76_alloc_txwi(dev);
}
