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
struct stmpe {int /*<<< orphan*/ * regs; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int STMPE1601_AUTOSLEEP_TIMEOUT_MASK ; 
 size_t STMPE_IDX_SYS_CTRL2 ; 
 int STPME1601_AUTOSLEEP_ENABLE ; 
 int FUNC0 (struct stmpe*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct stmpe *stmpe,
		int autosleep_timeout)
{
	int ret, timeout;

	/* choose the best available timeout */
	timeout = FUNC2(autosleep_timeout);
	if (timeout < 0) {
		FUNC1(stmpe->dev, "invalid timeout\n");
		return timeout;
	}

	ret = FUNC0(stmpe, stmpe->regs[STMPE_IDX_SYS_CTRL2],
			STMPE1601_AUTOSLEEP_TIMEOUT_MASK,
			timeout);
	if (ret < 0)
		return ret;

	return FUNC0(stmpe, stmpe->regs[STMPE_IDX_SYS_CTRL2],
			STPME1601_AUTOSLEEP_ENABLE,
			STPME1601_AUTOSLEEP_ENABLE);
}