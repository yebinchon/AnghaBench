
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt76_reg_pair {int reg; int value; } ;
struct mt76_dev {int dummy; } ;


 int mt76_mmio_rr (struct mt76_dev*,int ) ;

__attribute__((used)) static int mt76_mmio_rd_rp(struct mt76_dev *dev, u32 base,
      struct mt76_reg_pair *data, int len)
{
 while (len > 0) {
  data->value = mt76_mmio_rr(dev, data->reg);
  data++;
  len--;
 }

 return 0;
}
