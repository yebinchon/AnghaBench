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
 int /*<<< orphan*/  A_SG_CONTEXT_CMD ; 
 int /*<<< orphan*/  A_SG_CONTEXT_DATA2 ; 
 int /*<<< orphan*/  A_SG_CONTEXT_MASK0 ; 
 int /*<<< orphan*/  A_SG_CONTEXT_MASK1 ; 
 int /*<<< orphan*/  A_SG_CONTEXT_MASK2 ; 
 int /*<<< orphan*/  A_SG_CONTEXT_MASK3 ; 
 int EBUSY ; 
 int F_CONTEXT_CMD_BUSY ; 
 int F_FREELIST ; 
 int /*<<< orphan*/  M_FL_SIZE ; 
 int /*<<< orphan*/  SG_CONTEXT_CMD_ATTEMPTS ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct adapter*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ,int) ; 

int FUNC6(struct adapter *adapter, unsigned int id)
{
	if (FUNC3(adapter, A_SG_CONTEXT_CMD) & F_CONTEXT_CMD_BUSY)
		return -EBUSY;

	FUNC5(adapter, A_SG_CONTEXT_MASK0, 0);
	FUNC5(adapter, A_SG_CONTEXT_MASK1, 0);
	FUNC5(adapter, A_SG_CONTEXT_MASK2, FUNC2(M_FL_SIZE));
	FUNC5(adapter, A_SG_CONTEXT_MASK3, 0);
	FUNC5(adapter, A_SG_CONTEXT_DATA2, 0);
	FUNC5(adapter, A_SG_CONTEXT_CMD,
		     FUNC1(1) | F_FREELIST | FUNC0(id));
	return FUNC4(adapter, A_SG_CONTEXT_CMD, F_CONTEXT_CMD_BUSY,
			       0, SG_CONTEXT_CMD_ATTEMPTS, 1);
}