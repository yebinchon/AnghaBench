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
struct adapter {int dummy; } ;
typedef  enum sge_context_type { ____Placeholder_sge_context_type } sge_context_type ;

/* Variables and functions */
 int /*<<< orphan*/  A_SG_CONTEXT_CMD ; 
 int /*<<< orphan*/  A_SG_CONTEXT_DATA0 ; 
 int /*<<< orphan*/  A_SG_CONTEXT_DATA1 ; 
 int /*<<< orphan*/  A_SG_CONTEXT_DATA2 ; 
 int /*<<< orphan*/  A_SG_CONTEXT_DATA3 ; 
 int EBUSY ; 
 int EINVAL ; 
 unsigned int FW_WR_NUM ; 
 int F_CONTEXT_CMD_BUSY ; 
 int F_EC_VALID ; 
 int /*<<< orphan*/  F_EGRESS ; 
 int SGE_CNTXT_OFLD ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (unsigned int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (unsigned int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (unsigned int) ; 
 int FUNC10 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct adapter*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct adapter*,int /*<<< orphan*/ ,int) ; 

int FUNC13(struct adapter *adapter, unsigned int id, int gts_enable,
		       enum sge_context_type type, int respq, u64 base_addr,
		       unsigned int size, unsigned int token, int gen,
		       unsigned int cidx)
{
	unsigned int credits = type == SGE_CNTXT_OFLD ? 0 : FW_WR_NUM;

	if (base_addr & 0xfff)	/* must be 4K aligned */
		return -EINVAL;
	if (FUNC10(adapter, A_SG_CONTEXT_CMD) & F_CONTEXT_CMD_BUSY)
		return -EBUSY;

	base_addr >>= 12;
	FUNC12(adapter, A_SG_CONTEXT_DATA0, FUNC5(cidx) |
		     FUNC2(credits) | FUNC4(gts_enable));
	FUNC12(adapter, A_SG_CONTEXT_DATA1, FUNC7(size) |
		     FUNC1(base_addr & 0xffff));
	base_addr >>= 16;
	FUNC12(adapter, A_SG_CONTEXT_DATA2, base_addr);
	base_addr >>= 32;
	FUNC12(adapter, A_SG_CONTEXT_DATA3,
		     FUNC0(base_addr & 0xf) | FUNC6(respq) |
		     FUNC8(type) | FUNC3(gen) | FUNC9(token) |
		     F_EC_VALID);
	return FUNC11(adapter, id, F_EGRESS);
}