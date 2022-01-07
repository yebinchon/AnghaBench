
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap_irq_chip {int num_irqs; struct cpcap_ddata* irq_drv_data; struct regmap_irq* irqs; } ;
struct regmap_irq {int dummy; } ;
struct cpcap_ddata {TYPE_1__* spi; int * irqdata; int regmap; struct regmap_irq* irqs; } ;
struct TYPE_2__ {int dev; int irq; } ;


 int IRQF_SHARED ;
 int cpcap_init_one_regmap_irq (struct cpcap_ddata*,struct regmap_irq*,int,int) ;
 struct regmap_irq_chip* cpcap_irq_chip ;
 int dev_err (int *,char*,int,int) ;
 int devm_regmap_add_irq_chip (int *,int ,int ,int,int,struct regmap_irq_chip*,int *) ;
 int irq_get_trigger_type (int ) ;

__attribute__((used)) static int cpcap_init_irq_chip(struct cpcap_ddata *cpcap, int irq_chip,
          int irq_start, int nr_irqs)
{
 struct regmap_irq_chip *chip = &cpcap_irq_chip[irq_chip];
 int i, ret;

 for (i = irq_start; i < irq_start + nr_irqs; i++) {
  struct regmap_irq *rirq = &cpcap->irqs[i];

  cpcap_init_one_regmap_irq(cpcap, rirq, irq_start, i);
 }
 chip->irqs = &cpcap->irqs[irq_start];
 chip->num_irqs = nr_irqs;
 chip->irq_drv_data = cpcap;

 ret = devm_regmap_add_irq_chip(&cpcap->spi->dev, cpcap->regmap,
           cpcap->spi->irq,
           irq_get_trigger_type(cpcap->spi->irq) |
           IRQF_SHARED, -1,
           chip, &cpcap->irqdata[irq_chip]);
 if (ret) {
  dev_err(&cpcap->spi->dev, "could not add irq chip %i: %i\n",
   irq_chip, ret);
  return ret;
 }

 return 0;
}
