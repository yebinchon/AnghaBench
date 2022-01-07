
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt76_dev {int dummy; } ;


 int mt76_mmio_rr (struct mt76_dev*,int) ;
 int mt76_mmio_wr (struct mt76_dev*,int,int) ;

__attribute__((used)) static u32 mt76_mmio_rmw(struct mt76_dev *dev, u32 offset, u32 mask, u32 val)
{
 val |= mt76_mmio_rr(dev, offset) & ~mask;
 mt76_mmio_wr(dev, offset, val);
 return val;
}
