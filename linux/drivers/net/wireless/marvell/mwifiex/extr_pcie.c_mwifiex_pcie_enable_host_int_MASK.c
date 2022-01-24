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
struct mwifiex_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HOST_INTR_MASK ; 
 int /*<<< orphan*/  PCIE_HOST_INT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct mwifiex_adapter*) ; 
 scalar_t__ FUNC2 (struct mwifiex_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mwifiex_adapter *adapter)
{
	if (FUNC1(adapter)) {
		/* Simply write the mask to the register */
		if (FUNC2(adapter, PCIE_HOST_INT_MASK,
				      HOST_INTR_MASK)) {
			FUNC0(adapter, ERROR,
				    "Enable host interrupt failed\n");
			return -1;
		}
	}

	return 0;
}