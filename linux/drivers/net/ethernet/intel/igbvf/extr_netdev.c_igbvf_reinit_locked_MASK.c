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
struct igbvf_adapter {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  __IGBVF_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct igbvf_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct igbvf_adapter*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

void FUNC6(struct igbvf_adapter *adapter)
{
	FUNC3();
	while (FUNC4(__IGBVF_RESETTING, &adapter->state))
		FUNC5(1000, 2000);
	FUNC1(adapter);
	FUNC2(adapter);
	FUNC0(__IGBVF_RESETTING, &adapter->state);
}