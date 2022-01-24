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
typedef  int /*<<< orphan*/  u32 ;
struct adapter {int dummy; } ;
typedef  enum ctxt_type { ____Placeholder_ctxt_type } ctxt_type ;

/* Variables and functions */
 int /*<<< orphan*/  BUSY_F ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  SGE_CTXT_CMD_A ; 
 int SGE_CTXT_DATA0_A ; 
 int SGE_CTXT_DATA5_A ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int) ; 
 int FUNC3 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct adapter *adap, unsigned int cid,
		      enum ctxt_type ctype, u32 *data)
{
	int i, ret;

	FUNC4(adap, SGE_CTXT_CMD_A, FUNC0(cid) | FUNC1(ctype));
	ret = FUNC3(adap, SGE_CTXT_CMD_A, BUSY_F, 0, 3, 1);
	if (!ret)
		for (i = SGE_CTXT_DATA0_A; i <= SGE_CTXT_DATA5_A; i += 4)
			*data++ = FUNC2(adap, i);
	return ret;
}