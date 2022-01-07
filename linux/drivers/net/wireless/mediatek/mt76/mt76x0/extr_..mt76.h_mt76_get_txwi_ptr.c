
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mt76_txwi_cache {int dummy; } ;
struct mt76_dev {TYPE_1__* drv; } ;
struct TYPE_2__ {int txwi_size; } ;



__attribute__((used)) static inline u8 *
mt76_get_txwi_ptr(struct mt76_dev *dev, struct mt76_txwi_cache *t)
{
 return (u8 *)t - dev->drv->txwi_size;
}
