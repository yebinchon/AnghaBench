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
struct at86rf230_local {int sleep; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct at86rf230_local*) ; 
 int /*<<< orphan*/  FUNC1 (struct at86rf230_local*) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int,unsigned int*) ; 

__attribute__((used)) static inline int
FUNC3(struct at86rf230_local *lp,
		 unsigned int addr, unsigned int *data)
{
	bool sleep = lp->sleep;
	int ret;

	/* awake for register setting if sleep */
	if (sleep)
		FUNC0(lp);

	ret = FUNC2(lp->regmap, addr, data);

	/* sleep again if was sleeping */
	if (sleep)
		FUNC1(lp);

	return ret;
}