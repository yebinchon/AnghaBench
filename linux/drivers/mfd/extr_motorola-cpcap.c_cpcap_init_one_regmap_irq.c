
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap_irq {unsigned int reg_offset; unsigned int mask; } ;
struct cpcap_ddata {TYPE_1__* regmap_conf; } ;
struct TYPE_2__ {unsigned int val_bits; unsigned int reg_stride; } ;



__attribute__((used)) static void cpcap_init_one_regmap_irq(struct cpcap_ddata *cpcap,
          struct regmap_irq *rirq,
          int irq_base, int irq)
{
 unsigned int reg_offset;
 unsigned int bit, mask;

 reg_offset = irq - irq_base;
 reg_offset /= cpcap->regmap_conf->val_bits;
 reg_offset *= cpcap->regmap_conf->reg_stride;

 bit = irq % cpcap->regmap_conf->val_bits;
 mask = (1 << bit);

 rirq->reg_offset = reg_offset;
 rirq->mask = mask;
}
