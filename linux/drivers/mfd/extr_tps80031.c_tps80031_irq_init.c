
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps80031 {int irq_data; int * regmap; struct device* dev; } ;
struct device {int dummy; } ;


 int IRQF_ONESHOT ;
 scalar_t__ TPS80031_INT_MSK_STS_A ;
 size_t TPS80031_SLAVE_ID2 ;
 int dev_err (struct device*,char*,int) ;
 int regmap_add_irq_chip (int ,int,int ,int,int *,int *) ;
 int tps80031_irq_chip ;
 int tps80031_write (struct device*,size_t,scalar_t__,int) ;

__attribute__((used)) static int tps80031_irq_init(struct tps80031 *tps80031, int irq, int irq_base)
{
 struct device *dev = tps80031->dev;
 int i, ret;
 for (i = 0; i < 3; i++)
  tps80031_write(dev, TPS80031_SLAVE_ID2,
    TPS80031_INT_MSK_STS_A + i, 0x00);

 ret = regmap_add_irq_chip(tps80031->regmap[TPS80031_SLAVE_ID2], irq,
   IRQF_ONESHOT, irq_base,
   &tps80031_irq_chip, &tps80031->irq_data);
 if (ret < 0) {
  dev_err(dev, "add irq failed, err = %d\n", ret);
  return ret;
 }
 return ret;
}
