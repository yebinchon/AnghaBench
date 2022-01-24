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
struct netxen_adapter {scalar_t__ is_up; } ;

/* Variables and functions */
 scalar_t__ NETXEN_ADAPTER_UP_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct netxen_adapter*) ; 

__attribute__((used)) static void
FUNC6(struct netxen_adapter *adapter)
{
	if (adapter->is_up != NETXEN_ADAPTER_UP_MAGIC)
		return;

	FUNC5(adapter);

	FUNC0(adapter);
	FUNC4(adapter);
	FUNC3(adapter);
	FUNC2(adapter);
	FUNC1(adapter);

	adapter->is_up = 0;
}