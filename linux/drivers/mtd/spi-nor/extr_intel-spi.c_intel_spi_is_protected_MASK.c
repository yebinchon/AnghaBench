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
typedef  unsigned int u32 ;
struct intel_spi {int pr_num; scalar_t__ pregs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 unsigned int PR_BASE_MASK ; 
 unsigned int PR_LIMIT_MASK ; 
 unsigned int PR_LIMIT_SHIFT ; 
 unsigned int PR_RPE ; 
 unsigned int PR_WPE ; 
 unsigned int FUNC1 (scalar_t__) ; 

__attribute__((used)) static bool FUNC2(const struct intel_spi *ispi,
				   unsigned int base, unsigned int limit)
{
	int i;

	for (i = 0; i < ispi->pr_num; i++) {
		u32 pr_base, pr_limit, pr_value;

		pr_value = FUNC1(ispi->pregs + FUNC0(i));
		if (!(pr_value & (PR_WPE | PR_RPE)))
			continue;

		pr_limit = (pr_value & PR_LIMIT_MASK) >> PR_LIMIT_SHIFT;
		pr_base = pr_value & PR_BASE_MASK;

		if (pr_base >= base && pr_limit <= limit)
			return true;
	}

	return false;
}