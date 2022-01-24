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

/* Variables and functions */
 int /*<<< orphan*/  DPAA2_ETH_DBG_ROOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dpaa2_dbg_root ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2(void)
{
	dpaa2_dbg_root = FUNC0(DPAA2_ETH_DBG_ROOT, NULL);
	FUNC1("DPAA2-ETH: debugfs created\n");
}