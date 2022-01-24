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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_SG_CONTEXT_CMD ; 
 int /*<<< orphan*/  A_SG_CONTEXT_DATA0 ; 
 int /*<<< orphan*/  A_SG_CONTEXT_DATA1 ; 
 int /*<<< orphan*/  A_SG_CONTEXT_DATA2 ; 
 int /*<<< orphan*/  A_SG_CONTEXT_DATA3 ; 
 int EBUSY ; 
 int EINVAL ; 
 int F_CONTEXT_CMD_BUSY ; 
 int /*<<< orphan*/  F_CQ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (unsigned int) ; 
 int FUNC8 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct adapter*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*,int /*<<< orphan*/ ,int) ; 

int FUNC11(struct adapter *adapter, unsigned int id, u64 base_addr,
			unsigned int size, int rspq, int ovfl_mode,
			unsigned int credits, unsigned int credit_thres)
{
	if (base_addr & 0xfff)	/* must be 4K aligned */
		return -EINVAL;
	if (FUNC8(adapter, A_SG_CONTEXT_CMD) & F_CONTEXT_CMD_BUSY)
		return -EBUSY;

	base_addr >>= 12;
	FUNC10(adapter, A_SG_CONTEXT_DATA0, FUNC7(size));
	FUNC10(adapter, A_SG_CONTEXT_DATA1, base_addr);
	base_addr >>= 32;
	FUNC10(adapter, A_SG_CONTEXT_DATA2,
		     FUNC0((u32) base_addr) | FUNC6(rspq) |
		     FUNC4(1) | FUNC5(ovfl_mode) |
		     FUNC3(ovfl_mode));
	FUNC10(adapter, A_SG_CONTEXT_DATA3, FUNC1(credits) |
		     FUNC2(credit_thres));
	return FUNC9(adapter, id, F_CQ);
}