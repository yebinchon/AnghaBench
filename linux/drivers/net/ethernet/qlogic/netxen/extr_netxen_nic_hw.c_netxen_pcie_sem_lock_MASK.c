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
typedef  scalar_t__ u32 ;
struct netxen_adapter {int /*<<< orphan*/  portnum; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int NETXEN_PCIE_SEM_TIMEOUT ; 
 int FUNC1 (struct netxen_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct netxen_adapter*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int
FUNC5(struct netxen_adapter *adapter, int sem, u32 id_reg)
{
	int done = 0, timeout = 0;

	while (!done) {
		done = FUNC1(adapter, FUNC0(FUNC3(sem)));
		if (done == 1)
			break;
		if (++timeout >= NETXEN_PCIE_SEM_TIMEOUT)
			return -EIO;
		FUNC4(1);
	}

	if (id_reg)
		FUNC2(adapter, id_reg, adapter->portnum);

	return 0;
}