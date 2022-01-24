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
typedef  int /*<<< orphan*/  u32 ;
struct device_node {int dummy; } ;
struct atmel_smc_timing_xlate {char* name; int (* converter ) (struct atmel_smc_cs_conf*,int /*<<< orphan*/ ,unsigned int) ;int /*<<< orphan*/  shift; } ;
struct atmel_smc_cs_conf {int /*<<< orphan*/  mode; } ;
struct atmel_ebi_dev {TYPE_1__* ebi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int FUNC0 (struct atmel_smc_timing_xlate*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned int ATMEL_SMC_MODE_TDF_MAX ; 
 unsigned int ATMEL_SMC_MODE_TDF_MIN ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int EINVAL ; 
 unsigned int NSEC_PER_SEC ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct device_node*) ; 
 int FUNC5 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct atmel_smc_cs_conf*,int /*<<< orphan*/ ,unsigned int) ; 
 struct atmel_smc_timing_xlate* timings_xlate_table ; 

__attribute__((used)) static int FUNC7(struct atmel_ebi_dev *ebid,
					struct device_node *np,
					struct atmel_smc_cs_conf *smcconf)
{
	unsigned int clk_rate = FUNC3(ebid->ebi->clk);
	unsigned int clk_period_ns = NSEC_PER_SEC / clk_rate;
	bool required = false;
	unsigned int ncycles;
	int ret, i;
	u32 val;

	ret = FUNC5(np, "atmel,smc-tdf-ns", &val);
	if (!ret) {
		required = true;
		ncycles = FUNC2(val, clk_period_ns);
		if (ncycles > ATMEL_SMC_MODE_TDF_MAX) {
			ret = -EINVAL;
			goto out;
		}

		if (ncycles < ATMEL_SMC_MODE_TDF_MIN)
			ncycles = ATMEL_SMC_MODE_TDF_MIN;

		smcconf->mode |= FUNC1(ncycles);
	}

	for (i = 0; i < FUNC0(timings_xlate_table); i++) {
		const struct atmel_smc_timing_xlate *xlate;

		xlate = &timings_xlate_table[i];

		ret = FUNC5(np, xlate->name, &val);
		if (ret) {
			if (!required)
				continue;
			else
				break;
		}

		if (!required) {
			ret = -EINVAL;
			break;
		}

		ncycles = FUNC2(val, clk_period_ns);
		ret = xlate->converter(smcconf, xlate->shift, ncycles);
		if (ret)
			goto out;
	}

out:
	if (ret) {
		FUNC4(ebid->ebi->dev,
			"missing or invalid timings definition in %pOF",
			np);
		return ret;
	}

	return required;
}