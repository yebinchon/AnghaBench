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
 int FUNC0 (struct netxen_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct netxen_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NX_CRB_DEV_REF_COUNT ; 
 scalar_t__ FUNC2 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct netxen_adapter*) ; 

__attribute__((used)) static int
FUNC4(struct netxen_adapter *adapter)
{
	int count;
	if (FUNC2(adapter))
		return -EIO;

	count = FUNC0(adapter, NX_CRB_DEV_REF_COUNT);

	FUNC1(adapter, NX_CRB_DEV_REF_COUNT, ++count);

	FUNC3(adapter);
	return count;
}