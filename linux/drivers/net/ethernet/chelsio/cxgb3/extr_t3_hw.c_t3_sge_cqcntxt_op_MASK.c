#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ rev; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_SG_CONTEXT_CMD ; 
 int /*<<< orphan*/  A_SG_CONTEXT_DATA0 ; 
 int EBUSY ; 
 int EIO ; 
 int F_CONTEXT_CMD_BUSY ; 
 unsigned int F_CQ ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  SG_CONTEXT_CMD_ATTEMPTS ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 int FUNC3 (struct adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct adapter*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct adapter*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC7(struct adapter *adapter, unsigned int id, unsigned int op,
		      unsigned int credits)
{
	u32 val;

	if (FUNC3(adapter, A_SG_CONTEXT_CMD) & F_CONTEXT_CMD_BUSY)
		return -EBUSY;

	FUNC6(adapter, A_SG_CONTEXT_DATA0, credits << 16);
	FUNC6(adapter, A_SG_CONTEXT_CMD, FUNC2(op) |
		     FUNC1(id) | F_CQ);
	if (FUNC5(adapter, A_SG_CONTEXT_CMD, F_CONTEXT_CMD_BUSY,
				0, SG_CONTEXT_CMD_ATTEMPTS, 1, &val))
		return -EIO;

	if (op >= 2 && op < 7) {
		if (adapter->params.rev > 0)
			return FUNC0(val);

		FUNC6(adapter, A_SG_CONTEXT_CMD,
			     FUNC2(0) | F_CQ | FUNC1(id));
		if (FUNC4(adapter, A_SG_CONTEXT_CMD,
				    F_CONTEXT_CMD_BUSY, 0,
				    SG_CONTEXT_CMD_ATTEMPTS, 1))
			return -EIO;
		return FUNC0(FUNC3(adapter, A_SG_CONTEXT_DATA0));
	}
	return 0;
}