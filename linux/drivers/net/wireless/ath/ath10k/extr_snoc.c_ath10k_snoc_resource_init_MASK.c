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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct ath10k_snoc {TYPE_1__* ce_irqs; struct platform_device* dev; int /*<<< orphan*/  mem_pa; int /*<<< orphan*/  mem; } ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq_line; } ;

/* Variables and functions */
 int CE_COUNT ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,char*,...) ; 
 struct ath10k_snoc* FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC3 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 struct resource* FUNC4 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*) ; 

__attribute__((used)) static int FUNC6(struct ath10k *ar)
{
	struct ath10k_snoc *ar_snoc = FUNC1(ar);
	struct platform_device *pdev;
	struct resource *res;
	int i, ret = 0;

	pdev = ar_snoc->dev;
	res = FUNC4(pdev, IORESOURCE_MEM, "membase");
	if (!res) {
		FUNC0(ar, "Memory base not found in DT\n");
		return -EINVAL;
	}

	ar_snoc->mem_pa = res->start;
	ar_snoc->mem = FUNC2(&pdev->dev, ar_snoc->mem_pa,
				    FUNC5(res));
	if (!ar_snoc->mem) {
		FUNC0(ar, "Memory base ioremap failed with physical address %pa\n",
			   &ar_snoc->mem_pa);
		return -EINVAL;
	}

	for (i = 0; i < CE_COUNT; i++) {
		res = FUNC3(ar_snoc->dev, IORESOURCE_IRQ, i);
		if (!res) {
			FUNC0(ar, "failed to get IRQ%d\n", i);
			ret = -ENODEV;
			goto out;
		}
		ar_snoc->ce_irqs[i].irq_line = res->start;
	}

out:
	return ret;
}