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
struct mwifiex_adapter {int /*<<< orphan*/  devdump_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  MWIFIEX_FW_DUMP_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct mwifiex_adapter *adapter)
{
	adapter->devdump_data = FUNC5(MWIFIEX_FW_DUMP_SIZE);
	if (!adapter->devdump_data) {
		FUNC0(adapter, ERROR,
			    "vzalloc devdump data failure!\n");
		return;
	}

	FUNC1(adapter);
	FUNC2(adapter);
	FUNC3(adapter);
	FUNC4(adapter);
}