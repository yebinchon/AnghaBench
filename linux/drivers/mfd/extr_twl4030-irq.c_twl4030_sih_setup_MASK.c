#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sih_agent {int irq_base; scalar_t__ irq_name; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  imr; struct sih const* sih; } ;
struct sih {int module; int bits; int /*<<< orphan*/  name; scalar_t__ set_cor; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_EARLY_RESUME ; 
 int IRQF_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  handle_twl4030_sih ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,struct sih_agent*) ; 
 int /*<<< orphan*/  FUNC5 (int,struct sih_agent*) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct sih_agent* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int nr_sih_modules ; 
 int FUNC10 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sih* sih_modules ; 
 int twl4030_irq_base ; 
 int /*<<< orphan*/  twl4030_sih_irq_chip ; 

int FUNC11(struct device *dev, int module, int irq_base)
{
	int			sih_mod;
	const struct sih	*sih = NULL;
	struct sih_agent	*agent;
	int			i, irq;
	int			status = -EINVAL;

	/* only support modules with standard clear-on-read for now */
	for (sih_mod = 0, sih = sih_modules; sih_mod < nr_sih_modules;
			sih_mod++, sih++) {
		if (sih->module == module && sih->set_cor) {
			status = 0;
			break;
		}
	}

	if (status < 0) {
		FUNC1(dev, "module to setup SIH for not found\n");
		return status;
	}

	agent = FUNC8(sizeof(*agent), GFP_KERNEL);
	if (!agent)
		return -ENOMEM;

	agent->irq_base = irq_base;
	agent->sih = sih;
	agent->imr = ~0;
	FUNC9(&agent->irq_lock);

	for (i = 0; i < sih->bits; i++) {
		irq = irq_base + i;

		FUNC4(irq, agent);
		FUNC3(irq, &twl4030_sih_irq_chip,
					 handle_edge_irq);
		FUNC6(irq, 1);
		FUNC0(irq);
	}

	/* replace generic PIH handler (handle_simple_irq) */
	irq = sih_mod + twl4030_irq_base;
	FUNC5(irq, agent);
	agent->irq_name = FUNC7(GFP_KERNEL, "twl4030_%s", sih->name);
	status = FUNC10(irq, NULL, handle_twl4030_sih,
				      IRQF_EARLY_RESUME | IRQF_ONESHOT,
				      agent->irq_name ?: sih->name, NULL);

	FUNC2(dev, "%s (irq %d) chaining IRQs %d..%d\n", sih->name,
			irq, irq_base, irq_base + i - 1);

	return status < 0 ? status : irq_base;
}