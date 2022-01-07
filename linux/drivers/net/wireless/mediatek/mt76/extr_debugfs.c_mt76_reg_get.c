
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct mt76_dev {int debugfs_reg; TYPE_1__* bus; } ;
struct TYPE_2__ {int (* rr ) (struct mt76_dev*,int ) ;} ;


 int stub1 (struct mt76_dev*,int ) ;

__attribute__((used)) static int
mt76_reg_get(void *data, u64 *val)
{
 struct mt76_dev *dev = data;

 *val = dev->bus->rr(dev, dev->debugfs_reg);
 return 0;
}
