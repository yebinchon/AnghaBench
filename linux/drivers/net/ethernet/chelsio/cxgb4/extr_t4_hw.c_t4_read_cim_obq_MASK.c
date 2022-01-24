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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  chip; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int CIM_NUM_OBQ ; 
 int CIM_NUM_OBQ_T5 ; 
 int /*<<< orphan*/  CIM_OBQ_DBG_CFG_A ; 
 int /*<<< orphan*/  CIM_OBQ_DBG_DATA_A ; 
 int /*<<< orphan*/  CIM_QUEUE_CONFIG_CTRL_A ; 
 int /*<<< orphan*/  CIM_QUEUE_CONFIG_REF_A ; 
 int EINVAL ; 
 int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  OBQDBGBUSY_F ; 
 int OBQDBGEN_F ; 
 int OBQSELECT_F ; 
 int FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,int /*<<< orphan*/ ,int) ; 

int FUNC8(struct adapter *adap, unsigned int qid, u32 *data, size_t n)
{
	int i, err;
	unsigned int addr, v, nwords;
	int cim_num_obq = FUNC4(adap->params.chip) ?
				CIM_NUM_OBQ : CIM_NUM_OBQ_T5;

	if ((qid > (cim_num_obq - 1)) || (n & 3))
		return -EINVAL;

	FUNC7(adap, CIM_QUEUE_CONFIG_REF_A, OBQSELECT_F |
		     FUNC3(qid));
	v = FUNC5(adap, CIM_QUEUE_CONFIG_CTRL_A);

	addr = FUNC0(v) * 64;    /* muliple of 256 -> muliple of 4 */
	nwords = FUNC1(v) * 64;  /* same */
	if (n > nwords)
		n = nwords;

	for (i = 0; i < n; i++, addr++) {
		FUNC7(adap, CIM_OBQ_DBG_CFG_A, FUNC2(addr) |
			     OBQDBGEN_F);
		err = FUNC6(adap, CIM_OBQ_DBG_CFG_A, OBQDBGBUSY_F, 0,
				      2, 1);
		if (err)
			return err;
		*data++ = FUNC5(adap, CIM_OBQ_DBG_DATA_A);
	}
	FUNC7(adap, CIM_OBQ_DBG_CFG_A, 0);
	return i;
}