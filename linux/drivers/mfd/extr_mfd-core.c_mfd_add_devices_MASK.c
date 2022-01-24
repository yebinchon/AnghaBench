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
struct resource {int dummy; } ;
struct mfd_cell {int dummy; } ;
struct irq_domain {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct device*,int,struct mfd_cell const*,int /*<<< orphan*/ *,struct resource*,int,struct irq_domain*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 

int FUNC5(struct device *parent, int id,
		    const struct mfd_cell *cells, int n_devs,
		    struct resource *mem_base,
		    int irq_base, struct irq_domain *domain)
{
	int i;
	int ret;
	atomic_t *cnts;

	/* initialize reference counting for all cells */
	cnts = FUNC1(n_devs, sizeof(*cnts), GFP_KERNEL);
	if (!cnts)
		return -ENOMEM;

	for (i = 0; i < n_devs; i++) {
		FUNC0(&cnts[i], 0);
		ret = FUNC3(parent, id, cells + i, cnts + i, mem_base,
				     irq_base, domain);
		if (ret)
			goto fail;
	}

	return 0;

fail:
	if (i)
		FUNC4(parent);
	else
		FUNC2(cnts);
	return ret;
}