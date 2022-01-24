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
 int /*<<< orphan*/  NX_CRB_DEV_STATE ; 
 int NX_DEV_COLD ; 
 int NX_DEV_FAILED ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct netxen_adapter*) ; 

__attribute__((used)) static int
FUNC5(struct netxen_adapter *adapter)
{
	int count, state;
	if (FUNC3(adapter))
		return -EIO;

	count = FUNC0(adapter, NX_CRB_DEV_REF_COUNT);
	FUNC2(count == 0);

	FUNC1(adapter, NX_CRB_DEV_REF_COUNT, --count);
	state = FUNC0(adapter, NX_CRB_DEV_STATE);

	if (count == 0 && state != NX_DEV_FAILED)
		FUNC1(adapter, NX_CRB_DEV_STATE, NX_DEV_COLD);

	FUNC4(adapter);
	return count;
}