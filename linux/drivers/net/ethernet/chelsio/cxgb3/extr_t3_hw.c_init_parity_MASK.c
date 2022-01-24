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
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_CIM_IBQ_DBG_CFG ; 
 int /*<<< orphan*/  A_CIM_IBQ_DBG_DATA ; 
 int /*<<< orphan*/  A_SG_CONTEXT_CMD ; 
 int EBUSY ; 
 int F_CONTEXT_CMD_BUSY ; 
 int /*<<< orphan*/  F_EGRESS ; 
 int /*<<< orphan*/  F_IBQDBGBUSY ; 
 int F_IBQDBGEN ; 
 int F_IBQDBGWR ; 
 int /*<<< orphan*/  F_RESPONSEQ ; 
 int M_IBQDBGADDR ; 
 int SGE_QSETS ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct adapter*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct adapter *adap)
{
	int i, err, addr;

	if (FUNC3(adap, A_SG_CONTEXT_CMD) & F_CONTEXT_CMD_BUSY)
		return -EBUSY;

	for (err = i = 0; !err && i < 16; i++)
		err = FUNC2(adap, i, F_EGRESS);
	for (i = 0xfff0; !err && i <= 0xffff; i++)
		err = FUNC2(adap, i, F_EGRESS);
	for (i = 0; !err && i < SGE_QSETS; i++)
		err = FUNC2(adap, i, F_RESPONSEQ);
	if (err)
		return err;

	FUNC5(adap, A_CIM_IBQ_DBG_DATA, 0);
	for (i = 0; i < 4; i++)
		for (addr = 0; addr <= M_IBQDBGADDR; addr++) {
			FUNC5(adap, A_CIM_IBQ_DBG_CFG, F_IBQDBGEN |
				     F_IBQDBGWR | FUNC1(i) |
				     FUNC0(addr));
			err = FUNC4(adap, A_CIM_IBQ_DBG_CFG,
					      F_IBQDBGBUSY, 0, 2, 1);
			if (err)
				return err;
		}
	return 0;
}