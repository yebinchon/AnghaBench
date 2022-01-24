#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct regmap_irq_chip {int num_irqs; struct cpcap_ddata* irq_drv_data; struct regmap_irq* irqs; } ;
struct regmap_irq {int dummy; } ;
struct cpcap_ddata {TYPE_1__* spi; int /*<<< orphan*/ * irqdata; int /*<<< orphan*/  regmap; struct regmap_irq* irqs; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct cpcap_ddata*,struct regmap_irq*,int,int) ; 
 struct regmap_irq_chip* cpcap_irq_chip ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct regmap_irq_chip*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct cpcap_ddata *cpcap, int irq_chip,
			       int irq_start, int nr_irqs)
{
	struct regmap_irq_chip *chip = &cpcap_irq_chip[irq_chip];
	int i, ret;

	for (i = irq_start; i < irq_start + nr_irqs; i++) {
		struct regmap_irq *rirq = &cpcap->irqs[i];

		FUNC0(cpcap, rirq, irq_start, i);
	}
	chip->irqs = &cpcap->irqs[irq_start];
	chip->num_irqs = nr_irqs;
	chip->irq_drv_data = cpcap;

	ret = FUNC2(&cpcap->spi->dev, cpcap->regmap,
				       cpcap->spi->irq,
				       FUNC3(cpcap->spi->irq) |
				       IRQF_SHARED, -1,
				       chip, &cpcap->irqdata[irq_chip]);
	if (ret) {
		FUNC1(&cpcap->spi->dev, "could not add irq chip %i: %i\n",
			irq_chip, ret);
		return ret;
	}

	return 0;
}