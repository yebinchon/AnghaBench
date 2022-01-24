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

/* Variables and functions */
 int /*<<< orphan*/  CIM_IBQ_DBG_CFG_A ; 
 int /*<<< orphan*/  CIM_IBQ_DBG_DATA_A ; 
 int CIM_IBQ_SIZE ; 
 int EINVAL ; 
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  IBQDBGBUSY_F ; 
 int IBQDBGEN_F ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct adapter *adap, unsigned int qid, u32 *data, size_t n)
{
	int i, err, attempts;
	unsigned int addr;
	const unsigned int nwords = CIM_IBQ_SIZE * 4;

	if (qid > 5 || (n & 3))
		return -EINVAL;

	addr = qid * nwords;
	if (n > nwords)
		n = nwords;

	/* It might take 3-10ms before the IBQ debug read access is allowed.
	 * Wait for 1 Sec with a delay of 1 usec.
	 */
	attempts = 1000000;

	for (i = 0; i < n; i++, addr++) {
		FUNC3(adap, CIM_IBQ_DBG_CFG_A, FUNC0(addr) |
			     IBQDBGEN_F);
		err = FUNC2(adap, CIM_IBQ_DBG_CFG_A, IBQDBGBUSY_F, 0,
				      attempts, 1);
		if (err)
			return err;
		*data++ = FUNC1(adap, CIM_IBQ_DBG_DATA_A);
	}
	FUNC3(adap, CIM_IBQ_DBG_CFG_A, 0);
	return i;
}