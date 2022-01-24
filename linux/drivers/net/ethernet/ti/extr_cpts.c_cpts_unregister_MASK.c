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
struct cpts {int /*<<< orphan*/  refclk; int /*<<< orphan*/  txq; int /*<<< orphan*/ * clock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  control ; 
 int /*<<< orphan*/  FUNC2 (struct cpts*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  int_enable ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct cpts *cpts)
{
	if (FUNC0(!cpts->clock))
		return;

	FUNC3(cpts->clock);
	cpts->clock = NULL;

	FUNC2(cpts, 0, int_enable);
	FUNC2(cpts, 0, control);

	/* Drop all packet */
	FUNC4(&cpts->txq);

	FUNC1(cpts->refclk);
}