
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt76_reg_pair {int value; int reg; } ;
struct mt76_dev {int dummy; } ;


 int mt76_mmio_wr (struct mt76_dev*,int ,int ) ;

__attribute__((used)) static int mt76_mmio_wr_rp(struct mt76_dev *dev, u32 base,
      const struct mt76_reg_pair *data, int len)
{
 while (len > 0) {
  mt76_mmio_wr(dev, data->reg, data->value);
  data++;
  len--;
 }

 return 0;
}
