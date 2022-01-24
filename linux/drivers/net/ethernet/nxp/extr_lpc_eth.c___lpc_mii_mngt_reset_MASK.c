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
struct netdata_local {int /*<<< orphan*/  net_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LPC_MCFG_CLOCK_HOST_DIV_28 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LPC_MCFG_RESET_MII_MGMT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct netdata_local *pldat)
{
	/* Reset MII management hardware */
	FUNC2(LPC_MCFG_RESET_MII_MGMT, FUNC0(pldat->net_base));

	/* Setup MII clock to slowest rate with a /28 divider */
	FUNC2(FUNC1(LPC_MCFG_CLOCK_HOST_DIV_28),
	       FUNC0(pldat->net_base));

	return 0;
}