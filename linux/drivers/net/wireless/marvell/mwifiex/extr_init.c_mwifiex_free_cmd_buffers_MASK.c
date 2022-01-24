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
struct mwifiex_adapter {scalar_t__ sleep_cfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct mwifiex_adapter*) ; 

void FUNC4(struct mwifiex_adapter *adapter)
{
	FUNC3(adapter);

	/* Free command buffer */
	FUNC1(adapter, INFO, "info: free cmd buffer\n");
	FUNC2(adapter);

	if (adapter->sleep_cfm)
		FUNC0(adapter->sleep_cfm);
}