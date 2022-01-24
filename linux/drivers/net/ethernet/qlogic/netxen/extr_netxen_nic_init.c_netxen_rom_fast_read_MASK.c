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
struct netxen_adapter {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (struct netxen_adapter*,int,int*) ; 
 scalar_t__ FUNC1 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct netxen_adapter*) ; 

int FUNC3(struct netxen_adapter *adapter, int addr, int *valp)
{
	int ret;

	if (FUNC1(adapter) != 0)
		return -EIO;

	ret = FUNC0(adapter, addr, valp);
	FUNC2(adapter);
	return ret;
}