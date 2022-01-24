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
struct cmac_statistics {int dummy; } ;
struct cmac {int /*<<< orphan*/  adapter; int /*<<< orphan*/  stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  SUNI1x10GEXP_BITMSK_MSTAT_CLEAR ; 
 int /*<<< orphan*/  SUNI1x10GEXP_REG_MSTAT_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cmac*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cmac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct cmac *cmac, int which)
{
	/* Clear port statistics */
	FUNC2(cmac, SUNI1x10GEXP_REG_MSTAT_CONTROL,
		SUNI1x10GEXP_BITMSK_MSTAT_CLEAR);
	FUNC4(2);
	FUNC0(&cmac->stats, 0, sizeof(struct cmac_statistics));

	FUNC1(cmac, which);

	/*
	 * XXX This should be done by the PHY and preferably not at all.
	 * The PHY doesn't give us link status indication on its own so have
	 * the link management code query it instead.
	 */
	FUNC3(cmac->adapter, 0);
	return 0;
}