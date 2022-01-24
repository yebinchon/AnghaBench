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
struct adapter {int /*<<< orphan*/  pdev_dev; } ;
typedef  int /*<<< orphan*/  cpumask_var_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned short,int) ; 
 int FUNC5 (unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC7(struct adapter *adap, unsigned short vec,
		       cpumask_var_t *aff_mask, int idx)
{
	int rv;

	if (!FUNC6(aff_mask, GFP_KERNEL)) {
		FUNC2(adap->pdev_dev, "alloc_cpumask_var failed\n");
		return -ENOMEM;
	}

	FUNC1(FUNC0(idx, FUNC3(adap->pdev_dev)),
			*aff_mask);

	rv = FUNC5(vec, *aff_mask);
	if (rv)
		FUNC4(adap->pdev_dev,
			 "irq_set_affinity_hint %u failed %d\n",
			 vec, rv);

	return 0;
}