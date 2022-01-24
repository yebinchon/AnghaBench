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
struct mmc_pwrseq_simple {struct gpio_descs* reset_gpios; } ;
struct gpio_descs {int ndescs; int /*<<< orphan*/  info; int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct gpio_descs*) ; 
 unsigned long* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long*) ; 

__attribute__((used)) static void FUNC6(struct mmc_pwrseq_simple *pwrseq,
					      int value)
{
	struct gpio_descs *reset_gpios = pwrseq->reset_gpios;

	if (!FUNC0(reset_gpios)) {
		unsigned long *values;
		int nvalues = reset_gpios->ndescs;

		values = FUNC1(nvalues, GFP_KERNEL);
		if (!values)
			return;

		if (value)
			FUNC2(values, nvalues);
		else
			FUNC3(values, nvalues);

		FUNC4(nvalues, reset_gpios->desc,
					       reset_gpios->info, values);

		FUNC5(values);
	}
}