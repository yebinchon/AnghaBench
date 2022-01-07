
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76_txwi_cache {int list; } ;
struct mt76_dev {int lock; int txwi_cache; } ;


 int list_add (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void
mt76_put_txwi(struct mt76_dev *dev, struct mt76_txwi_cache *t)
{
 if (!t)
  return;

 spin_lock_bh(&dev->lock);
 list_add(&t->list, &dev->txwi_cache);
 spin_unlock_bh(&dev->lock);
}
