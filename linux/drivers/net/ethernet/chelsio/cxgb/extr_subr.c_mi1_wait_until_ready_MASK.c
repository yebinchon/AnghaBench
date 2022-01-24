#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ adapter_t ;

/* Variables and functions */
 int F_MI1_OP_BUSY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(adapter_t *adapter, int mi1_reg)
{
	int attempts = 100, busy;

	do {
		u32 val;

		FUNC0(adapter, mi1_reg, &val);
		busy = val & F_MI1_OP_BUSY;
		if (busy)
			FUNC2(10);
	} while (busy && --attempts);
	if (busy)
		FUNC1("%s: MDIO operation timed out\n", adapter->name);
	return busy;
}