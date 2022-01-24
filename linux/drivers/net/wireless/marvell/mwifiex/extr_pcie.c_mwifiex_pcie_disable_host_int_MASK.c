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
struct mwifiex_adapter {int /*<<< orphan*/  tx_hw_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  PCIE_HOST_INT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct mwifiex_adapter*) ; 
 scalar_t__ FUNC3 (struct mwifiex_adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct mwifiex_adapter *adapter)
{
	if (FUNC2(adapter)) {
		if (FUNC3(adapter, PCIE_HOST_INT_MASK,
				      0x00000000)) {
			FUNC1(adapter, ERROR,
				    "Disable host interrupt failed\n");
			return -1;
		}
	}

	FUNC0(&adapter->tx_hw_pending, 0);
	return 0;
}