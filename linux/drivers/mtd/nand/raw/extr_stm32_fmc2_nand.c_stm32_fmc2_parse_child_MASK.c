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
typedef  int u32 ;
struct stm32_fmc2_nand {int ncs; int* cs_used; int /*<<< orphan*/  chip; } ;
struct stm32_fmc2_nfc {int cs_assigned; int /*<<< orphan*/  dev; struct stm32_fmc2_nand nand; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int FMC2_MAX_CE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,char*,int*) ; 
 int FUNC4 (struct device_node*,char*,int,int*) ; 

__attribute__((used)) static int FUNC5(struct stm32_fmc2_nfc *fmc2,
				  struct device_node *dn)
{
	struct stm32_fmc2_nand *nand = &fmc2->nand;
	u32 cs;
	int ret, i;

	if (!FUNC3(dn, "reg", &nand->ncs))
		return -EINVAL;

	nand->ncs /= sizeof(u32);
	if (!nand->ncs) {
		FUNC1(fmc2->dev, "invalid reg property size\n");
		return -EINVAL;
	}

	for (i = 0; i < nand->ncs; i++) {
		ret = FUNC4(dn, "reg", i, &cs);
		if (ret) {
			FUNC1(fmc2->dev, "could not retrieve reg property: %d\n",
				ret);
			return ret;
		}

		if (cs > FMC2_MAX_CE) {
			FUNC1(fmc2->dev, "invalid reg value: %d\n", cs);
			return -EINVAL;
		}

		if (fmc2->cs_assigned & FUNC0(cs)) {
			FUNC1(fmc2->dev, "cs already assigned: %d\n", cs);
			return -EINVAL;
		}

		fmc2->cs_assigned |= FUNC0(cs);
		nand->cs_used[i] = cs;
	}

	FUNC2(&nand->chip, dn);

	return 0;
}